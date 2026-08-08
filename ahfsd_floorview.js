autowatch = 1;
inlets = 1;
outlets = 0;

var dict_name = "ahfsd_bodies";
var room_w = 12.0;
var room_h = 21.0;
var x_min = -6.0;
var y_min = -10.5;

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

function bang() {
	mgraphics.redraw();
}

function paint() {
	var width = this.box.rect[2] - this.box.rect[0];
	var height = this.box.rect[3] - this.box.rect[1];

	// background
	mgraphics.set_source_rgba(0.12, 0.12, 0.14, 1.0);
	mgraphics.rectangle(0, 0, width, height);
	mgraphics.fill();

	// room border
	mgraphics.set_source_rgba(0.4, 0.4, 0.45, 1.0);
	mgraphics.set_line_width(1.5);
	mgraphics.rectangle(2, 2, width - 4, height - 4);
	mgraphics.stroke();

	// grid lines
	mgraphics.set_source_rgba(0.2, 0.2, 0.22, 1.0);
	mgraphics.set_line_width(0.5);
	for (var gx = -4; gx <= 4; gx += 2) {
		var px = ((gx - x_min) / room_w) * width;
		mgraphics.move_to(px, 0);
		mgraphics.line_to(px, height);
		mgraphics.stroke();
	}
	for (var gy = -8; gy <= 8; gy += 2) {
		var py = ((gy - y_min) / room_h) * height;
		mgraphics.move_to(0, py);
		mgraphics.line_to(width, py);
		mgraphics.stroke();
	}

	// center cross
	mgraphics.set_source_rgba(0.3, 0.3, 0.35, 1.0);
	mgraphics.set_line_width(1.0);
	var cx = width / 2;
	var cy = height / 2;
	mgraphics.move_to(cx - 8, cy);
	mgraphics.line_to(cx + 8, cy);
	mgraphics.stroke();
	mgraphics.move_to(cx, cy - 8);
	mgraphics.line_to(cx, cy + 8);
	mgraphics.stroke();

	// read bodies from dict
	var d;
	try {
		d = new Dict(dict_name);
	} catch(e) {
		return;
	}

	var body;
	try {
		body = d.get("body");
	} catch(e) {
		return;
	}
	if (!body) return;

	var keys;
	try {
		keys = body.getkeys();
	} catch(e) {
		return;
	}
	if (!keys) return;
	if (typeof keys === "string") keys = [keys];

	for (var i = 0; i < keys.length; i++) {
		var id = keys[i];
		var bx = d.get("body::" + id + "::position::x");
		var by = d.get("body::" + id + "::position::y");
		var bz = d.get("body::" + id + "::position::z");

		if (bx === null || by === null) continue;
		if (bz === null) bz = 1.5;

		var px = ((bx - x_min) / room_w) * width;
		var py = ((by - y_min) / room_h) * height;

		// color based on Z height
		var r, g, b;
		if (bz < 0.5) {
			// lying — blue
			r = 0.3; g = 0.5; b = 1.0;
		} else if (bz < 0.9) {
			// sitting — cyan
			r = 0.2; g = 0.85; b = 0.85;
		} else if (bz < 1.9) {
			// standing — white
			r = 0.95; g = 0.95; b = 0.95;
		} else {
			// elevated — orange
			r = 1.0; g = 0.65; b = 0.2;
		}

		// dot size based on Z — lower = smaller
		var radius = 3 + (bz / 3.0) * 5;

		// shadow
		mgraphics.set_source_rgba(0, 0, 0, 0.4);
		mgraphics.arc(px + 1, py + 1, radius, 0, Math.PI * 2);
		mgraphics.fill();

		// body dot
		mgraphics.set_source_rgba(r, g, b, 0.9);
		mgraphics.arc(px, py, radius, 0, Math.PI * 2);
		mgraphics.fill();

		// body ID label
		mgraphics.set_source_rgba(r, g, b, 0.6);
		mgraphics.set_font_size(9);
		mgraphics.move_to(px + radius + 2, py + 3);
		mgraphics.text_path(id);
		mgraphics.fill();
	}

	// legend
	mgraphics.set_font_size(9);
	var leg_x = 8;
	var leg_y = height - 55;

	mgraphics.set_source_rgba(0.3, 0.5, 1.0, 0.9);
	mgraphics.arc(leg_x + 4, leg_y, 3, 0, Math.PI * 2);
	mgraphics.fill();
	mgraphics.set_source_rgba(0.6, 0.6, 0.65, 1.0);
	mgraphics.move_to(leg_x + 12, leg_y + 3);
	mgraphics.text_path("lying");
	mgraphics.fill();

	mgraphics.set_source_rgba(0.2, 0.85, 0.85, 0.9);
	mgraphics.arc(leg_x + 4, leg_y + 14, 4, 0, Math.PI * 2);
	mgraphics.fill();
	mgraphics.set_source_rgba(0.6, 0.6, 0.65, 1.0);
	mgraphics.move_to(leg_x + 12, leg_y + 17);
	mgraphics.text_path("sitting");
	mgraphics.fill();

	mgraphics.set_source_rgba(0.95, 0.95, 0.95, 0.9);
	mgraphics.arc(leg_x + 4, leg_y + 28, 5, 0, Math.PI * 2);
	mgraphics.fill();
	mgraphics.set_source_rgba(0.6, 0.6, 0.65, 1.0);
	mgraphics.move_to(leg_x + 12, leg_y + 31);
	mgraphics.text_path("standing");
	mgraphics.fill();

	mgraphics.set_source_rgba(1.0, 0.65, 0.2, 0.9);
	mgraphics.arc(leg_x + 4, leg_y + 42, 6, 0, Math.PI * 2);
	mgraphics.fill();
	mgraphics.set_source_rgba(0.6, 0.6, 0.65, 1.0);
	mgraphics.move_to(leg_x + 12, leg_y + 45);
	mgraphics.text_path("elevated");
	mgraphics.fill();
}