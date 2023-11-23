// Render precision
// Set this to a small value for fast renders
$fn = 100;

// Radius of the cylinder used to round the edges of the top and bottom bases
BASE_RADIUS = 1.5;

// Angle measured on the HHKB
KEYBOARD_ANGLE = 7.3;

// Basic key characteristics
KEY_THICKNESS = 1.4;
TOP_BASE_EXTRUSION_HEIGHT = 0.01;
BOTTOM_BASE_EXTRUSION_HEIGHT = 0.01;

// Key size
KEY_SIZE = 1;

// Connector dimensions
CONNECTOR_RADIUS = 2.85;
CONNECTOR_HEIGHT = -1.35;
CONNECTOR_THICKNESS = 1;
CONNECTOR_SUPPORT_HEIGHT = 4;
CONNECTOR_MIDDLE_SPACE = 1.5;

// Topre dimensions
ROW_DIMENSIONS = [
	[10.2, 64, 2], // Row E
	[8.2, 60, -2], // Row D
	[6.7, 58, -8], // Row C
	[6.7, 60, -13], // Row B
	[6.7, 60, -13], // Row A
];

// Dimensions that are relevant to all rows
KEY_DIMENSIONS = [
	0.6, // Top base sagitta (default: 0.6)
	11.5, // Top base width (default: 11.5)
	18, // Bottom base length (default: 18)
	18, // Bottom base width (default: 18)
	86, // Bottom base back angle (default: 86)
];

// Symbol
SYMBOL_FILES = [
	"dxf/deathly_hallows.dxf", // 0
	"dxf/harry_potter.dxf", // 1
	"dxf/mockinjay.dxf", // 2
	"dxf/playstation.dxf", // 3
	"dxf/jedi_order.dxf", // 4
	"dxf/rebel_alliance.dxf", // 5
	"dxf/republic.dxf", // 6
	"dxf/sith_order.dxf", // 7
	"dxf/stark.dxf", // 8
	"dxf/D3.dxf", // 9
	"dxf/protoss.dxf", // 10
	"dxf/terran.dxf", // 11
	"dxf/zerg.dxf", // 12
	"dxf/kojima.dxf", // 13
];

SYMBOL_THICKNESS = 0.4;
SYMBOL_SPACING = 1.4;
DEBUG_SYMBOL = 0;

// Text
TEXT_THICKNESS = 0.4;
TEXT_SCALE = 3.0;
TEXT_BOTTOM_BASE_SPACING_RATE = 0.6;
TEXT_SCALE_RATE = 0.25;

// Some rendering options
APPLY_KEYBOARD_ANGLE = 0;
APPLY_KEY_ANGLE = 1;
APPLY_CYLINDRICAL_DISH = 1;
APPLY_SYMBOL = 0;
APPLY_SUPPORT = 0;
APPLY_TEXT = 1;

// Support
SUPPORT_WIDTH = 3.5;
SUPPORT_HEIGHT = 3.5;
SUPPORT_LENGTH = 2.5;

// Include the code for the modules and formulas
include<modules.scad>;

keycap_rows = [0, 1, 2, 3];
keycap_symbols = [4];
keycap_texts = ["E", "D", "C", "B"];

for (i = [0:len(keycap_rows) - 1]) {
	translate([i * bottom_base_width + i * SUPPORT_LENGTH, 0, 0])
		key(keycap_rows[i], keycap_symbols[i], keycap_texts[i]);
}
