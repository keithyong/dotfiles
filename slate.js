var webdevLayout = slate.layout("webdev", {
    "MacVim": {
        "operations": [pushTopRightTwoThirds],
        "repeat": true
    },
    "iTerm": {
        "operations": [pushBottomRightOneThird],
        "repeat": true
    },
    "Google Chrome": {
        "operations": [pushLeft],
        "repeat": true
    }
});

var doWebdevLayout = slate.operation("layout", { "name": webdevLayout });

var pushTopRightTwoThirds = slate.operation("corner", {
    "direction": "top-right",
    "width": "screenSizeX/2",
    "height": "2*screenSizeY/3"
});
var pushBottomRightOneThird = slate.operation("corner", {
    "direction": "bottom-right",
    "width": "screenSizeX/2",
    "height": "screenSizeY/3"
});
var pushRight = slate.operation("push", {
  "direction" : "right",
  "style" : "bar-resize:screenSizeX/2"
});
var pushLeft = slate.operation("push", {
  "direction" : "left",
  "style" : "bar-resize:screenSizeX/2"
});
var pushTop = slate.operation("push", {
  "direction" : "top",
  "style" : "bar-resize:screenSizeY/2"
});
var fullscreen = slate.operation("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY"
});
var hint = slate.operation("hint", {
    "characters": "JKL;FDSHO"
});

var pushTopRight = slate.operation("corner", {
    "direction": "top-right",
    "width": "screenSizeX/2",
    "height": "screenSizeY/2"
});
var pushBottomRight = slate.operation("corner", {
    "direction": "bottom-right",
    "width": "screenSizeX/2",
    "height": "screenSizeY/2"
});
var pushTopLeft = slate.operation("corner", {
    "direction": "top-left",
    "width": "screenSizeX/2",
    "height": "screenSizeY/2"
});
var pushBottomLeft = slate.operation("corner", {
    "direction": "bottom-left",
    "width": "screenSizeX/2",
    "height": "screenSizeY/2"
});

var l_count = 0;
slate.bind("l:cmd,shift", function(win) {
    l_count++;
    if (l_count == 1) {
        win.doOperation(pushTopRight);
    }
    else if (l_count == 2) {
        win.doOperation(pushBottomRight);
        l_count = 0;
    }
});

var h_count = 0;
slate.bind("h:cmd,shift", function(win) {
    h_count++;
    if (h_count == 1) {
        win.doOperation(pushTopLeft);
    }
    else if (h_count == 2) {
        win.doOperation(pushBottomLeft);
        h_count = 0;
    }
});

slate.bind("j:cmd,shift", pushLeft);
slate.bind("k:cmd,shift", pushRight);
slate.bind(";:shift,cmd", fullscreen);
slate.bind("esc:cmd", hint);
