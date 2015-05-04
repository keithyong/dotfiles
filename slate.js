var hint = slate.operation("hint", {
    "characters": "JKL;FDSHO"
});
slate.bind("esc:cmd", hint);

var pushRight = slate.operation("push", {
  "direction" : "right",
  "style" : "bar-resize:screenSizeX/2"
});

var pushRightTwoThirds = slate.operation("push", {
    "direction": "right",
    "style": "bar-resize:2*screenSizeX/3"
});

var k_count = 0;
slate.bind("k:cmd,shift", function(win) {
    k_count++;
    if (k_count == 1) {
        win.doOperation(pushRight);
    }
    else if (k_count == 2) {
        win.doOperation(pushRightTwoThirds);
        k_count = 0;
    }
});

/* Operations for j */
var pushLeft = slate.operation("push", {
  "direction" : "left",
  "style" : "bar-resize:screenSizeX/2"
});

var pushLeftTwoThirds = slate.operation("push", {
    "direction": "left",
    "style": "bar-resize:2*screenSizeX/3"
});

var j_count = 0;
slate.bind("j:cmd,shift", function(win) {
    j_count++;
    if (j_count == 1) {
        win.doOperation(pushLeft);
    }
    else if (j_count == 2) {
        win.doOperation(pushLeftTwoThirds);
        j_count = 0;
    }
});

/* Fullscreen */
var fullscreen = slate.operation("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY"
});
slate.bind(";:shift,cmd", fullscreen);

/* Operations for l */
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


/* Operations for h */
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


/* Operations for left thirds */
var pushLeftThird = slate.operation("push", {
    "direction": "left",
    "style": "bar-resize:screenSizeX/3"
});

var pushLeftThirdTopHalf = slate.operation("corner", {
    "direction": "top-left",
    "width": "screenSizeX/3",
    "height": "screenSizeY/2"
});

var pushLeftThirdBottomHalf = slate.operation("corner", {
    "direction": "bottom-left",
    "width": "screenSizeX/3",
    "height": "screenSizeY/2"
});

/* Dynamic move for m key */
var m_count = 0;
slate.bind("m:cmd,shift", function(win) {
    m_count++;
    if (m_count == 1) {
        win.doOperation(pushLeftThird);
    }
    else if (m_count == 2) {
        win.doOperation(pushLeftThirdTopHalf);
    }
    else if (m_count == 3) {
        win.doOperation(pushLeftThirdBottomHalf);
        m_count = 0;
    }
});

/* Operations for right thirds */
var pushRightThird = slate.operation("push", {
    "direction": "right",
    "style": "bar-resize:screenSizeX/3"
});

var pushRightThirdTopHalf = slate.operation("corner", {
    "direction": "top-right",
    "width": "screenSizeX/3",
    "height": "screenSizeY/2"
});

var pushRightThirdBottomHalf = slate.operation("corner", {
    "direction": "bottom-right",
    "width": "screenSizeX/3",
    "height": "screenSizeY/2"
});

/* Dynamic move for . key */
var dot_count = 0;
slate.bind(".:cmd,shift", function(win) {
    dot_count++;
    if (dot_count == 1) {
        win.doOperation(pushRightThird);
    }
    else if (dot_count == 2) {
        win.doOperation(pushRightThirdTopHalf);
    }
    else if (dot_count == 3) {
        win.doOperation(pushRightThirdBottomHalf);
        dot_count = 0;
    }
});

/* Operations for center thirds */
var pushCenterThird = slate.operation("move", {
    "x" : "screenSizeX/3",
    "y" : "screenOriginY",
    "width" : "screenSizeX/3",
    "height" : "screenSizeY"
});

var pushCenterThirdTopHalf = slate.operation("move", {
    "x" : "screenSizeX/3",
    "y" : "screenOriginY",
    "width" : "screenSizeX/3",
    "height" : "screenSizeY/2"
});

var pushCenterThirdBottomHalf = slate.operation("move", {
    "x" : "screenSizeX/3",
    "y" : "screenSizeY/2",
    "width" : "screenSizeX/3",
    "height" : "screenSizeY/2"
});

/* Dynamic move for , key */
var comma_count = 0;
slate.bind(",:cmd,shift", function(win) {
    comma_count++;
    if (comma_count == 1) {
        win.doOperation(pushCenterThird);
    }
    else if (comma_count == 2) {
        win.doOperation(pushCenterThirdTopHalf);
    }
    else if (comma_count == 3) {
        win.doOperation(pushCenterThirdBottomHalf);
        comma_count = 0;
    }
});
