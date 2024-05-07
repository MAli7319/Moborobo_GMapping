
"use strict";

let Keypoint2Df = require('./Keypoint2Df.js');
let BoundingBox2Di = require('./BoundingBox2Di.js');
let BoundingBox2Df = require('./BoundingBox2Df.js');
let PosTrackStatus = require('./PosTrackStatus.js');
let Keypoint2Di = require('./Keypoint2Di.js');
let Skeleton2D = require('./Skeleton2D.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let RGBDSensors = require('./RGBDSensors.js');
let Object = require('./Object.js');
let ObjectsStamped = require('./ObjectsStamped.js');
let Keypoint3D = require('./Keypoint3D.js');
let Skeleton3D = require('./Skeleton3D.js');
let PlaneStamped = require('./PlaneStamped.js');

module.exports = {
  Keypoint2Df: Keypoint2Df,
  BoundingBox2Di: BoundingBox2Di,
  BoundingBox2Df: BoundingBox2Df,
  PosTrackStatus: PosTrackStatus,
  Keypoint2Di: Keypoint2Di,
  Skeleton2D: Skeleton2D,
  BoundingBox3D: BoundingBox3D,
  RGBDSensors: RGBDSensors,
  Object: Object,
  ObjectsStamped: ObjectsStamped,
  Keypoint3D: Keypoint3D,
  Skeleton3D: Skeleton3D,
  PlaneStamped: PlaneStamped,
};
