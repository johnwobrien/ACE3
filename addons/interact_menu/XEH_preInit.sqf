#include "script_component.hpp"

ADDON = false;

PREP(addAction);
PREP(addClassAction);
PREP(compileMenu);
PREP(compileMenuSelfAction);
PREP(collectActiveActionTree);
PREP(keyDown);
PREP(keyDownSelfAction);
PREP(keyUp);
PREP(keyUpSelfAction);
PREP(removeAction);
PREP(removeClassAction);
PREP(render);
PREP(renderIcon);
PREP(renderBaseMenu);
PREP(renderMenu);

GVAR(keyDown) = false;
GVAR(keyDownSelfAction) = false;
GVAR(keyDownTime) = 0;

GVAR(lastTime) = diag_tickTime;
GVAR(rotationAngle) = 0;

GVAR(selectedAction) = [[],[]];
GVAR(selectedStatement) = {};
GVAR(actionSelected) = false;
GVAR(selectedTarget) = objNull;

GVAR(menuDepthPath) = [];
GVAR(lastPos) = [0,0,0];

GVAR(currentOptions) = [];

GVAR(lastPath) = [];

GVAR(expanded) = false;

GVAR(startHoverTime) = diag_tickTime;
GVAR(iconCtrls) = [];
GVAR(iconCount) = 0;

ADDON = true;