#include <a_samp>
// #include <open.mp>

// external string color
#define KNOWNCOLOR_ACTIVEBORDER 0xB4B4B4FF
#define KNOWNCOLOR_ACTIVECAPTION 0x99B4D1FF
#define KNOWNCOLOR_ACTIVECAPTIONTEXT 0x000000FF
#define KNOWNCOLOR_APPWORKSPACE 0xABABABFF
#define KNOWNCOLOR_CONTROL 0xF0F0F0FF
#define KNOWNCOLOR_CONTROLDARK 0xA0A0A0FF
#define KNOWNCOLOR_CONTROLDARKDARK 0x696969FF
#define KNOWNCOLOR_CONTROLLIGHT 0xE3E3E3FF
#define KNOWNCOLOR_CONTROLLIGHTLIGHT 0xFFFFFFFF
#define KNOWNCOLOR_CONTROLTEXT 0x000000FF
#define KNOWNCOLOR_DESKTOP 0x000000FF
#define KNOWNCOLOR_GRAYTEXT 0x808080FF
#define KNOWNCOLOR_HIGHLIGHT 0x3399FFFF
#define KNOWNCOLOR_HIGHLIGHTTEXT 0xFFFFFFFF
#define KNOWNCOLOR_HOTTRACK 0x0066CCFF
#define KNOWNCOLOR_INACTIVEBORDER 0xF4F7FCFF
#define KNOWNCOLOR_INACTIVECAPTION 0xBFCDDBFF
#define KNOWNCOLOR_INACTIVECAPTIONTEXT 0x434E54FF
#define KNOWNCOLOR_INFO 0xFFFFE1FF
#define KNOWNCOLOR_INFOTEXT 0x000000FF
#define KNOWNCOLOR_MENU 0xF0F0F0FF
#define KNOWNCOLOR_MENUTEXT 0x000000FF
#define KNOWNCOLOR_SCROLLBAR 0xC8C8C8FF
#define KNOWNCOLOR_WINDOW 0xFFFFFFFF
#define KNOWNCOLOR_WINDOWFRAME 0x646464FF
#define KNOWNCOLOR_WINDOWTEXT 0x000000FF
#define KNOWNCOLOR_TRANSPARENT 0xFFFFFF00
#define KNOWNCOLOR_ALICEBLUE 0xF0F8FFFF
#define KNOWNCOLOR_ANTIQUEWHITE 0xFAEBD7FF
#define KNOWNCOLOR_AQUA 0x00FFFFFF
#define KNOWNCOLOR_AQUAMARINE 0x7FFFD4FF
#define KNOWNCOLOR_AZURE 0xF0FFFFFF
#define KNOWNCOLOR_BEIGE 0xF5F5DCFF
#define KNOWNCOLOR_BISQUE 0xFFE4C4FF
#define KNOWNCOLOR_BLACK 0x000000FF
#define KNOWNCOLOR_BLANCHEDALMOND 0xFFEBCDFF
#define KNOWNCOLOR_BLUE 0x0000FFFF
#define KNOWNCOLOR_BLUEVIOLET 0x8A2BE2FF
#define KNOWNCOLOR_BROWN 0xA52A2AFF
#define KNOWNCOLOR_BURLYWOOD 0xDEB887FF
#define KNOWNCOLOR_CADETBLUE 0x5F9EA0FF
#define KNOWNCOLOR_CHARTREUSE 0x7FFF00FF
#define KNOWNCOLOR_CHOCOLATE 0xD2691EFF
#define KNOWNCOLOR_CORAL 0xFF7F50FF
#define KNOWNCOLOR_CORNFLOWERBLUE 0x6495EDFF
#define KNOWNCOLOR_CORNSILK 0xFFF8DCFF
#define KNOWNCOLOR_CRIMSON 0xDC143CFF
#define KNOWNCOLOR_CYAN 0x00FFFFFF
#define KNOWNCOLOR_DARKBLUE 0x00008BFF
#define KNOWNCOLOR_DARKCYAN 0x008B8BFF
#define KNOWNCOLOR_DARKGOLDENROD 0xB8860BFF
#define KNOWNCOLOR_DARKGRAY 0xA9A9A9FF
#define KNOWNCOLOR_DARKGREEN 0x006400FF
#define KNOWNCOLOR_DARKKHAKI 0xBDB76BFF
#define KNOWNCOLOR_DARKMAGENTA 0x8B008BFF
#define KNOWNCOLOR_DARKOLIVEGREEN 0x556B2FFF
#define KNOWNCOLOR_DARKORANGE 0xFF8C00FF
#define KNOWNCOLOR_DARKORCHID 0x9932CCFF
#define KNOWNCOLOR_DARKRED 0x8B0000FF
#define KNOWNCOLOR_DARKSALMON 0xE9967AFF
#define KNOWNCOLOR_DARKSEAGREEN 0x8FBC8BFF
#define KNOWNCOLOR_DARKSLATEBLUE 0x483D8BFF
#define KNOWNCOLOR_DARKSLATEGRAY 0x2F4F4FFF
#define KNOWNCOLOR_DARKTURQUOISE 0x00CED1FF
#define KNOWNCOLOR_DARKVIOLET 0x9400D3FF
#define KNOWNCOLOR_DEEPPINK 0xFF1493FF
#define KNOWNCOLOR_DEEPSKYBLUE 0x00BFFFFF
#define KNOWNCOLOR_DIMGRAY 0x696969FF
#define KNOWNCOLOR_DODGERBLUE 0x1E90FFFF
#define KNOWNCOLOR_FIREBRICK 0xB22222FF
#define KNOWNCOLOR_FLORALWHITE 0xFFFAF0FF
#define KNOWNCOLOR_FORESTGREEN 0x228B22FF
#define KNOWNCOLOR_FUCHSIA 0xFF00FFFF
#define KNOWNCOLOR_GAINSBORO 0xDCDCDCFF
#define KNOWNCOLOR_GHOSTWHITE 0xF8F8FFFF
#define KNOWNCOLOR_GOLD 0xFFD700FF
#define KNOWNCOLOR_GOLDENROD 0xDAA520FF
#define KNOWNCOLOR_GRAY 0x808080FF
#define KNOWNCOLOR_GREEN 0x008000FF
#define KNOWNCOLOR_GREENYELLOW 0xADFF2FFF
#define KNOWNCOLOR_HONEYDEW 0xF0FFF0FF
#define KNOWNCOLOR_HOTPINK 0xFF69B4FF
#define KNOWNCOLOR_INDIANRED 0xCD5C5CFF
#define KNOWNCOLOR_INDIGO 0x4B0082FF
#define KNOWNCOLOR_IVORY 0xFFFFF0FF
#define KNOWNCOLOR_KHAKI 0xF0E68CFF
#define KNOWNCOLOR_LAVENDER 0xE6E6FAFF
#define KNOWNCOLOR_LAVENDERBLUSH 0xFFF0F5FF
#define KNOWNCOLOR_LAWNGREEN 0x7CFC00FF
#define KNOWNCOLOR_LEMONCHIFFON 0xFFFACDFF
#define KNOWNCOLOR_LIGHTBLUE 0xADD8E6FF
#define KNOWNCOLOR_LIGHTCORAL 0xF08080FF
#define KNOWNCOLOR_LIGHTCYAN 0xE0FFFFFF
#define KNOWNCOLOR_LIGHTGOLDENRODYELLOW 0xFAFAD2FF
#define KNOWNCOLOR_LIGHTGRAY 0xD3D3D3FF
#define KNOWNCOLOR_LIGHTGREEN 0x90EE90FF
#define KNOWNCOLOR_LIGHTPINK 0xFFB6C1FF
#define KNOWNCOLOR_LIGHTSALMON 0xFFA07AFF
#define KNOWNCOLOR_LIGHTSEAGREEN 0x20B2AAFF
#define KNOWNCOLOR_LIGHTSKYBLUE 0x87CEFAFF
#define KNOWNCOLOR_LIGHTSLATEGRAY 0x778899FF
#define KNOWNCOLOR_LIGHTSTEELBLUE 0xB0C4DEFF
#define KNOWNCOLOR_LIGHTYELLOW 0xFFFFE0FF
#define KNOWNCOLOR_LIME 0x00FF00FF
#define KNOWNCOLOR_LIMEGREEN 0x32CD32FF
#define KNOWNCOLOR_LINEN 0xFAF0E6FF
#define KNOWNCOLOR_MAGENTA 0xFF00FFFF
#define KNOWNCOLOR_MAROON 0x800000FF
#define KNOWNCOLOR_MEDIUMAQUAMARINE 0x66CDAAFF
#define KNOWNCOLOR_MEDIUMBLUE 0x0000CDFF
#define KNOWNCOLOR_MEDIUMORCHID 0xBA55D3FF
#define KNOWNCOLOR_MEDIUMPURPLE 0x9370DBFF
#define KNOWNCOLOR_MEDIUMSEAGREEN 0x3CB371FF
#define KNOWNCOLOR_MEDIUMSLATEBLUE 0x7B68EEFF
#define KNOWNCOLOR_MEDIUMSPRINGGREEN 0x00FA9AFF
#define KNOWNCOLOR_MEDIUMTURQUOISE 0x48D1CCFF
#define KNOWNCOLOR_MEDIUMVIOLETRED 0xC71585FF
#define KNOWNCOLOR_MIDNIGHTBLUE 0x191970FF
#define KNOWNCOLOR_MINTCREAM 0xF5FFFAFF
#define KNOWNCOLOR_MISTYROSE 0xFFE4E1FF
#define KNOWNCOLOR_MOCCASIN 0xFFE4B5FF
#define KNOWNCOLOR_NAVAJOWHITE 0xFFDEADFF
#define KNOWNCOLOR_NAVY 0x000080FF
#define KNOWNCOLOR_OLDLACE 0xFDF5E6FF
#define KNOWNCOLOR_OLIVE 0x808000FF
#define KNOWNCOLOR_OLIVEDRAB 0x6B8E23FF
#define KNOWNCOLOR_ORANGE 0xFFA500FF
#define KNOWNCOLOR_ORANGERED 0xFF4500FF
#define KNOWNCOLOR_ORCHID 0xDA70D6FF
#define KNOWNCOLOR_PALEGOLDENROD 0xEEE8AAFF
#define KNOWNCOLOR_PALEGREEN 0x98FB98FF
#define KNOWNCOLOR_PALETURQUOISE 0xAFEEEEFF
#define KNOWNCOLOR_PALEVIOLETRED 0xDB7093FF
#define KNOWNCOLOR_PAPAYAWHIP 0xFFEFD5FF
#define KNOWNCOLOR_PEACHPUFF 0xFFDAB9FF
#define KNOWNCOLOR_PERU 0xCD853FFF
#define KNOWNCOLOR_PINK 0xFFC0CBFF
#define KNOWNCOLOR_PLUM 0xDDA0DDFF
#define KNOWNCOLOR_POWDERBLUE 0xB0E0E6FF
#define KNOWNCOLOR_PURPLE 0x800080FF
#define KNOWNCOLOR_RED 0xFF0000FF
#define KNOWNCOLOR_ROSYBROWN 0xBC8F8FFF
#define KNOWNCOLOR_ROYALBLUE 0x4169E1FF
#define KNOWNCOLOR_SADDLEBROWN 0x8B4513FF
#define KNOWNCOLOR_SALMON 0xFA8072FF
#define KNOWNCOLOR_SANDYBROWN 0xF4A460FF
#define KNOWNCOLOR_SEAGREEN 0x2E8B57FF
#define KNOWNCOLOR_SEASHELL 0xFFF5EEFF
#define KNOWNCOLOR_SIENNA 0xA0522DFF
#define KNOWNCOLOR_SILVER 0xC0C0C0FF
#define KNOWNCOLOR_SKYBLUE 0x87CEEBFF
#define KNOWNCOLOR_SLATEBLUE 0x6A5ACDFF
#define KNOWNCOLOR_SLATEGRAY 0x708090FF
#define KNOWNCOLOR_SNOW 0xFFFAFAFF
#define KNOWNCOLOR_SPRINGGREEN 0x00FF7FFF
#define KNOWNCOLOR_STEELBLUE 0x4682B4FF
#define KNOWNCOLOR_TAN 0xD2B48CFF
#define KNOWNCOLOR_TEAL 0x008080FF
#define KNOWNCOLOR_THISTLE 0xD8BFD8FF
#define KNOWNCOLOR_TOMATO 0xFF6347FF
#define KNOWNCOLOR_TURQUOISE 0x40E0D0FF
#define KNOWNCOLOR_VIOLET 0xEE82EEFF
#define KNOWNCOLOR_WHEAT 0xF5DEB3FF
#define KNOWNCOLOR_WHITE 0xFFFFFFFF
#define KNOWNCOLOR_WHITESMOKE 0xF5F5F5FF
#define KNOWNCOLOR_YELLOW 0xFFFF00FF
#define KNOWNCOLOR_YELLOWGREEN 0x9ACD32FF
#define KNOWNCOLOR_BUTTONFACE 0xF0F0F0FF
#define KNOWNCOLOR_BUTTONHIGHLIGHT 0xFFFFFFFF
#define KNOWNCOLOR_BUTTONSHADOW 0xA0A0A0FF
#define KNOWNCOLOR_GRADIENTACTIVECAPTION 0xB9D1EAFF
#define KNOWNCOLOR_GRADIENTINACTIVECAPTION 0xD7E4F2FF
#define KNOWNCOLOR_MENUBAR 0xF0F0F0FF
#define KNOWNCOLOR_MENUHIGHLIGHT 0x3399FFFF
//
#define COLOR_TEDDY 0x8A946BFF
#define COLOR_ACTIVEBORDER 0xB4B4B4FF
#define COLOR_ACTIVECAPTION 0x99B4D1FF
#define COLOR_ACTIVECAPTIONTEXT 0x000000FF
#define COLOR_ALICEBLUE 0xF0F8FFFF
#define COLOR_ANTIQUEWHITE 0xFAEBD7FF
#define COLOR_APPWORKSPACE 0xABABABFF
#define COLOR_AQUA 0x00FFFFFF
#define COLOR_AQUAMARINE 0x7FFFD4FF
#define COLOR_AZURE 0xF0FFFFFF
#define COLOR_BEIGE 0xF5F5DCFF
#define COLOR_BISQUE 0xFFE4C4FF
#define COLOR_BLACK 0x000000FF
#define COLOR_BLANCHEDALMOND 0xFFEBCDFF
#define COLOR_BLUE 0x0000FFFF
#define COLOR_BLUEVIOLET 0x8A2BE2FF
#define COLOR_BROWN 0xA52A2AFF
#define COLOR_BURLYWOOD 0xDEB887FF
#define COLOR_BUTTONFACE 0xF0F0F0FF
#define COLOR_BUTTONHIGHLIGHT 0xFFFFFFFF
#define COLOR_BUTTONSHADOW 0xA0A0A0FF
#define COLOR_CADETBLUE 0x5F9EA0FF
#define COLOR_CHARTREUSE 0x7FFF00FF
#define COLOR_CHOCOLATE 0xD2691EFF
#define COLOR_CONTROL 0xF0F0F0FF
#define COLOR_CONTROLDARK 0xA0A0A0FF
#define COLOR_CONTROLDARKDARK 0x696969FF
#define COLOR_CONTROLLIGHT 0xE3E3E3FF
#define COLOR_CONTROLLIGHTLIGHT 0xFFFFFFFF
#define COLOR_CONTROLTEXT 0x000000FF
#define COLOR_CORAL 0xFF7F50FF
#define COLOR_CORNFLOWERBLUE 0x6495EDFF
#define COLOR_CORNSILK 0xFFF8DCFF
#define COLOR_CRIMSON 0xDC143CFF
#define COLOR_CYAN 0x00FFFFFF
#define COLOR_DARKBLUE 0x00008BFF
#define COLOR_DARKCYAN 0x008B8BFF
#define COLOR_DARKGOLDENROD 0xB8860BFF
#define COLOR_DARKGRAY 0xA9A9A9FF
#define COLOR_DARKGREEN 0x006400FF
#define COLOR_DARKKHAKI 0xBDB76BFF
#define COLOR_DARKMAGENTA 0x8B008BFF
#define COLOR_DARKOLIVEGREEN 0x556B2FFF
#define COLOR_DARKORANGE 0xFF8C00FF
#define COLOR_DARKORCHID 0x9932CCFF
#define COLOR_DARKRED 0x8B0000FF
#define COLOR_DARKSALMON 0xE9967AFF
#define COLOR_DARKSEAGREEN 0x8FBC8BFF
#define COLOR_DARKSLATEBLUE 0x483D8BFF
#define COLOR_DARKSLATEGRAY 0x2F4F4FFF
#define COLOR_DARKTURQUOISE 0x00CED1FF
#define COLOR_DARKVIOLET 0x9400D3FF
#define COLOR_DEEPPINK 0xFF1493FF
#define COLOR_DEEPSKYBLUE 0x00BFFFFF
#define COLOR_DESKTOP 0x000000FF
#define COLOR_DIMGRAY 0x696969FF
#define COLOR_DODGERBLUE 0x1E90FFFF
#define COLOR_FIREBRICK 0xB22222FF
#define COLOR_FLORALWHITE 0xFFFAF0FF
#define COLOR_FORESTGREEN 0x228B22FF
#define COLOR_FUCHSIA 0xFF00FFFF
#define COLOR_GAINSBORO 0xDCDCDCFF
#define COLOR_GHOSTWHITE 0xF8F8FFFF
#define COLOR_GOLD 0xFFD700FF
#define COLOR_GOLDENROD 0xDAA520FF
#define COLOR_GRADIENTACTIVECAPTION 0xB9D1EAFF
#define COLOR_GRADIENTINACTIVECAPTION 0xD7E4F2FF
#define COLOR_GRAY 0x808080FF
#define COLOR_GRAYTEXT 0x808080FF
#define COLOR_GREEN 0x008000FF
#define COLOR_GREENYELLOW 0xADFF2FFF
#define COLOR_HIGHLIGHT 0x3399FFFF
#define COLOR_HIGHLIGHTTEXT 0xFFFFFFFF
#define COLOR_HONEYDEW 0xF0FFF0FF
#define COLOR_HOTPINK 0xFF69B4FF
#define COLOR_HOTTRACK 0x0066CCFF
#define COLOR_INACTIVEBORDER 0xF4F7FCFF
#define COLOR_INACTIVECAPTION 0xBFCDDBFF
#define COLOR_INACTIVECAPTIONTEXT 0x434E54FF
#define COLOR_INDIANRED 0xCD5C5CFF
#define COLOR_INDIGO 0x4B0082FF
#define COLOR_INFO 0xFFFFE1FF
#define COLOR_INFOTEXT 0x000000FF
#define COLOR_IVORY 0xFFFFF0FF
#define COLOR_KHAKI 0xF0E68CFF
#define COLOR_LAVENDER 0xE6E6FAFF
#define COLOR_LAVENDERBLUSH 0xFFF0F5FF
#define COLOR_LAWNGREEN 0x7CFC00FF
#define COLOR_LEMONCHIFFON 0xFFFACDFF
#define COLOR_LIGHTBLUE 0xADD8E6FF
#define COLOR_LIGHTCORAL 0xF08080FF
#define COLOR_LIGHTCYAN 0xE0FFFFFF
#define COLOR_LIGHTGOLDENRODYELLOW 0xFAFAD2FF
#define COLOR_LIGHTGRAY 0xD3D3D3FF
#define COLOR_LIGHTGREEN 0x90EE90FF
#define COLOR_LIGHTPINK 0xFFB6C1FF
#define COLOR_LIGHTSALMON 0xFFA07AFF
#define COLOR_LIGHTSEAGREEN 0x20B2AAFF
#define COLOR_LIGHTSKYBLUE 0x87CEFAFF
#define COLOR_LIGHTSLATEGRAY 0x778899FF
#define COLOR_LIGHTSTEELBLUE 0xB0C4DEFF
#define COLOR_LIGHTYELLOW 0xFFFFE0FF
#define COLOR_LIME 0x00FF00FF
#define COLOR_LIMEGREEN 0x32CD32FF
#define COLOR_LINEN 0xFAF0E6FF
#define COLOR_MAGENTA 0xFF00FFFF
#define COLOR_MAROON 0x800000FF
#define COLOR_MEDIUMAQUAMARINE 0x66CDAAFF
#define COLOR_MEDIUMBLUE 0x0000CDFF
#define COLOR_MEDIUMORCHID 0xBA55D3FF
#define COLOR_MEDIUMPURPLE 0x9370DBFF
#define COLOR_MEDIUMSEAGREEN 0x3CB371FF
#define COLOR_MEDIUMSLATEBLUE 0x7B68EEFF
#define COLOR_MEDIUMSPRINGGREEN 0x00FA9AFF
#define COLOR_MEDIUMTURQUOISE 0x48D1CCFF
#define COLOR_MEDIUMVIOLETRED 0xC71585FF
#define COLOR_MENU 0xF0F0F0FF
#define COLOR_MENUBAR 0xF0F0F0FF
#define COLOR_MENUHIGHLIGHT 0x3399FFFF
#define COLOR_MENUTEXT 0x000000FF
#define COLOR_MIDNIGHTBLUE 0x191970FF
#define COLOR_MINTCREAM 0xF5FFFAFF
#define COLOR_MISTYROSE 0xFFE4E1FF
#define COLOR_MOCCASIN 0xFFE4B5FF
#define COLOR_NAVAJOWHITE 0xFFDEADFF
#define COLOR_NAVY 0x000080FF
#define COLOR_OLDLACE 0xFDF5E6FF
#define COLOR_OLIVE 0x808000FF
#define COLOR_OLIVEDRAB 0x6B8E23FF
#define COLOR_ORANGE 0xFFA500FF
#define COLOR_ORANGERED 0xFF4500FF
#define COLOR_ORCHID 0xDA70D6FF
#define COLOR_PALEGOLDENROD 0xEEE8AAFF
#define COLOR_PALEGREEN 0x98FB98FF
#define COLOR_PALETURQUOISE 0xAFEEEEFF
#define COLOR_PALEVIOLETRED 0xDB7093FF
#define COLOR_PAPAYAWHIP 0xFFEFD5FF
#define COLOR_PEACHPUFF 0xFFDAB9FF
#define COLOR_PERU 0xCD853FFF
#define COLOR_PINK 0xFFC0CBFF
#define COLOR_PLUM 0xDDA0DDFF
#define COLOR_POWDERBLUE 0xB0E0E6FF
#define COLOR_PURPLE 0x800080FF
#define COLOR_RED 0xFF0000FF
#define COLOR_ROSYBROWN 0xBC8F8FFF
#define COLOR_ROYALBLUE 0x4169E1FF
#define COLOR_SADDLEBROWN 0x8B4513FF
#define COLOR_SALMON 0xFA8072FF
#define COLOR_SANDYBROWN 0xF4A460FF
#define COLOR_SCROLLBAR 0xC8C8C8FF
#define COLOR_SEAGREEN 0x2E8B57FF
#define COLOR_SEASHELL 0xFFF5EEFF
#define COLOR_SIENNA 0xA0522DFF
#define COLOR_SILVER 0xC0C0C0FF
#define COLOR_SKYBLUE 0x87CEEBFF
#define COLOR_SLATEBLUE 0x6A5ACDFF
#define COLOR_SLATEGRAY 0x708090FF
#define COLOR_SNOW 0xFFFAFAFF
#define COLOR_SPRINGGREEN 0x00FF7FFF
#define COLOR_STEELBLUE 0x4682B4FF
#define COLOR_TAN 0xD2B48CFF
#define COLOR_TEAL 0x008080FF
#define COLOR_THISTLE 0xD8BFD8FF
#define COLOR_TOMATO 0xFF6347FF
#define COLOR_TRANSPARENT 0xFFFFFF00
#define COLOR_TURQUOISE 0x40E0D0FF
#define COLOR_VIOLET 0xEE82EEFF
#define COLOR_WHEAT 0xF5DEB3FF
#define COLOR_WHITE 0xFFFFFFFF
#define COLOR_WHITESMOKE 0xF5F5F5FF
#define COLOR_WINDOW 0xFFFFFFFF
#define COLOR_WINDOWFRAME 0x646464FF
#define COLOR_WINDOWTEXT 0x000000FF
#define COLOR_YELLOW 0xFFFF00FF
#define COLOR_YELLOWGREEN 0x9ACD32FF

// internal string color
#define TWOSIX      "{FF5533}"
#define AQUA        "{7fffd4}"
#define FAMILY_E	"{F77AFF}"
#define PURPLE_E2	"{7348EB}"
#define RED_E 		"{FF0000}"
#define BLUE_E 		"{004BFF}"
#define SBLUE_E 	"{56A4E4}"
#define PINK_E 		"{FFB6C1}"
#define YELLOW_E 	"{FFFF00}"
#define LG_E 		"{00FF00}"
#define LB_E 		"{15D4ED}"
#define LB2_E 		"{87CEFA}"
#define GREY_E 		"{BABABA}"
#define GREY2_E 	"{778899}"
#define GREY3_E 	"{C8C8C8}"
#define DARK_E 		"{7A7A7A}"
#define WHITE_E 	"{FFFFFF}"
#define WHITE 	"{FFFFFF}"
#define WHITEP_E 	"{FFE4C4}"
#define IVORY_E 	"{FFFF82}"
#define ORANGE_E 	"{DB881A}"
#define ORANGE_E2	"{FF5000}"
#define GREEN_E 	"{3BBD44}"
#define PURPLE_E 	"{5A00FF}"
#define ANS_E 		"{FF9945}"
#define LIME_E 		"{D2D2AB}"
#define LRED_E		"{E65555}"
#define SILVER_E    "{999999}"
#define DOOM_		"{F4A460}"
#define MATHS       "{3571FC}"
#define REACTIONS   "{FD4141}"
#define LBLUE   	"{00FFFF}"
#define RIKO        "{ADD8E6}"
#define ERROR_E     "{AFAFAF}"
