interface Attribute
    exposes [
        Attribute,
        attribute,
        accumulate,
        additive,
        alignmentBaseline,
        amplitude,
        attributeName,
        azimuth,
        baseFrequency,
        baselineShift,
        begin,
        bias,
        by,
        calcMode,
        class,
        clipPath,
        clipPathUnits,
        clipRule,
        color,
        colorInterpolation,
        colorInterpolationFilters,
        cursor,
        cx,
        cy,
        d,
        diffuseConstant,
        direction,
        display,
        divisor,
        dominantBaseline,
        dur,
        dx,
        dy,
        edgeMode,
        elevation,
        end,
        exponent,
        fill,
        fillOpacity,
        fillRule,
        filter,
        filterUnits,
        floodColor,
        floodOpacity,
        fontFamily,
        fontSize,
        fontSizeAdjust,
        fontStretch,
        fontStyle,
        fontVariant,
        fontWeight,
        fr,
        from,
        fx,
        fy,
        gradientTransform,
        gradientUnits,
        height,
        href,
        id,
        imageRendering,
        in,
        in2,
        intercept,
        k1,
        k2,
        k3,
        k4,
        kernelMatrix,
        kernelUnitLength,
        keyPoints,
        keySplines,
        keyTimes,
        lang,
        lengthAdjust,
        letterSpacing,
        lightingColor,
        limitingConeAngle,
        markerEnd,
        markerHeight,
        markerMid,
        markerStart,
        markerUnits,
        markerWidth,
        mask,
        maskContentUnits,
        maskUnits,
        max,
        media,
        method,
        min,
        mode,
        numOctaves,
        onclick,
        opacity,
        operator,
        order,
        orient,
        origin,
        overflow,
        overlinePosition,
        overlineThickness,
        paintOrder,
        path,
        pathLength,
        patternContentUnits,
        patternTransform,
        patternUnits,
        pointerEvents,
        points,
        pointsAtX,
        pointsAtY,
        pointsAtZ,
        preserveAlpha,
        preserveAspectRatio,
        primitiveUnits,
        r,
        radius,
        refX,
        refY,
        repeatCount,
        repeatDur,
        restart,
        result,
        rotate,
        rx,
        ry,
        scale,
        seed,
        shapeRendering,
        side,
        spacing,
        specularConstant,
        specularExponent,
        spreadMethod,
        startOffset,
        stdDeviation,
        stitchTiles,
        stopColor,
        stopOpacity,
        strikethroughPosition,
        strikethroughThickness,
        stroke,
        strokeDasharray,
        strokeDashoffset,
        strokeLinecap,
        strokeLinejoin,
        strokeMiterlimit,
        strokeOpacity,
        strokeWidth,
        style,
        surfaceScale,
        systemLanguage,
        tabindex,
        tableValues,
        target,
        targetX,
        targetY,
        textAnchor,
        textDecoration,
        textLength,
        textRendering,
        to,
        transform,
        transformOrigin,
        type,
        underlinePosition,
        underlineThickness,
        unicodeBidi,
        values,
        vectorEffect,
        viewBox,
        visibility,
        width,
        wordSpacing,
        writingMode,
        x,
        x1,
        x2,
        xChannelSelector,
        xmlns,
        xmlnsXlink,
        y,
        y1,
        y2,
        yChannelSelector,
        z,
    ]
    imports []

Attribute : [Attribute Str Str]

## Define a non-standard attribute.
## You can use this to add attributes that are not already supported.
attribute : Str -> (Str -> Attribute)
attribute = \name ->
    \value -> Attribute name value

## Construct an [`accumulate`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/accumulate) attribute.
accumulate : Str -> Attribute
accumulate = attribute "accumulate"

## Construct an [`additive`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/additive) attribute.
additive : Str -> Attribute
additive = attribute "additive"

## Construct an [`alignment-baseline`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/alignment-baseline) attribute.
alignmentBaseline : Str -> Attribute
alignmentBaseline = attribute "alignment-baseline"

## Construct an [`amplitude`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/amplitude) attribute.
amplitude : Str -> Attribute
amplitude = attribute "amplitude"

## Construct an [`attributeName`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/attributename) attribute.
attributeName : Str -> Attribute
attributeName = attribute "attributeName"

## Construct an [`azimuth`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/azimuth) attribute.
azimuth : Str -> Attribute
azimuth = attribute "azimuth"

## Construct a [`baseFrequency`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/basefrequency) attribute.
baseFrequency : Str -> Attribute
baseFrequency = attribute "baseFrequency"

## Construct a [`baseline-shift`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/baseline-shift) attribute.
baselineShift : Str -> Attribute
baselineShift = attribute "baseline-shift"

## Construct a [`begin`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/begin) attribute.
begin : Str -> Attribute
begin = attribute "begin"

## Construct a [`bias`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/bias) attribute.
bias : Str -> Attribute
bias = attribute "bias"

## Construct a [`by`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/by) attribute.
by : Str -> Attribute
by = attribute "by"

## Construct a [`calcMode`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/calcmode) attribute.
calcMode : Str -> Attribute
calcMode = attribute "calcMode"

## Construct a [`class`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/class) attribute.
class : Str -> Attribute
class = attribute "class"

## Construct a [`clip-path`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/clip-path) attribute.
clipPath : Str -> Attribute
clipPath = attribute "clip-path"

## Construct a [`clipPathUnits`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/clippathunits) attribute.
clipPathUnits : Str -> Attribute
clipPathUnits = attribute "clipPathUnits"

## Construct a [`clip-rule`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/clip-rule) attribute.
clipRule : Str -> Attribute
clipRule = attribute "clip-rule"

## Construct a [`color`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/color) attribute.
color : Str -> Attribute
color = attribute "color"

## Construct a [`color-interpolation`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/color-interpolation) attribute.
colorInterpolation : Str -> Attribute
colorInterpolation = attribute "color-interpolation"

## Construct a [`color-interpolation-filters`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/color-interpolation-filters) attribute.
colorInterpolationFilters : Str -> Attribute
colorInterpolationFilters = attribute "color-interpolation-filters"

## Construct a [`cursor`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cursor) attribute.
cursor : Str -> Attribute
cursor = attribute "cursor"

## Construct a [`cx`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cx) attribute.
cx : Str -> Attribute
cx = attribute "cx"

## Construct a [`cy`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cy) attribute.
cy : Str -> Attribute
cy = attribute "cy"

## Construct a [`d`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/d) attribute.
d : Str -> Attribute
d = attribute "d"

## Construct a [`diffuseConstant`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/diffuseconstant) attribute.
diffuseConstant : Str -> Attribute
diffuseConstant = attribute "diffuseConstant"

## Construct a [`direction`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/direction) attribute.
direction : Str -> Attribute
direction = attribute "direction"

## Construct a [`display`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/display) attribute.
display : Str -> Attribute
display = attribute "display"

## Construct a [`divisor`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/divisor) attribute.
divisor : Str -> Attribute
divisor = attribute "divisor"

## Construct a [`dominant-baseline`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dominant-baseline) attribute.
dominantBaseline : Str -> Attribute
dominantBaseline = attribute "dominant-baseline"

## Construct a [`dur`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dur) attribute.
dur : Str -> Attribute
dur = attribute "dur"

## Construct a [`dx`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dx) attribute.
dx : Str -> Attribute
dx = attribute "dx"

## Construct a [`dy`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dy) attribute.
dy : Str -> Attribute
dy = attribute "dy"

## Construct an [`edgeMode`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/edgemode) attribute.
edgeMode : Str -> Attribute
edgeMode = attribute "edgeMode"

## Construct an [`elevation`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/elevation) attribute.
elevation : Str -> Attribute
elevation = attribute "elevation"

## Construct an [`end`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/end) attribute.
end : Str -> Attribute
end = attribute "end"

## Construct an [`exponent`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/exponent) attribute.
exponent : Str -> Attribute
exponent = attribute "exponent"

## Construct a [`fill`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fill) attribute.
fill : Str -> Attribute
fill = attribute "fill"

## Construct a [`fill-opacity`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fill-opacity) attribute.
fillOpacity : Str -> Attribute
fillOpacity = attribute "fill-opacity"

## Construct a [`fill-rule`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fill-rule) attribute.
fillRule : Str -> Attribute
fillRule = attribute "fill-rule"

## Construct a [`filter`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/filter) attribute.
filter : Str -> Attribute
filter = attribute "filter"

## Construct a [`filterUnits`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/filterunits) attribute.
filterUnits : Str -> Attribute
filterUnits = attribute "filterUnits"

## Construct a [`flood-color`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/flood-color) attribute.
floodColor : Str -> Attribute
floodColor = attribute "flood-color"

## Construct a [`flood-opacity`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/flood-opacity) attribute.
floodOpacity : Str -> Attribute
floodOpacity = attribute "flood-opacity"

## Construct a [`font-family`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-family) attribute.
fontFamily : Str -> Attribute
fontFamily = attribute "font-family"

## Construct a [`font-size`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-size) attribute.
fontSize : Str -> Attribute
fontSize = attribute "font-size"

## Construct a [`font-size-adjust`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-size-adjust) attribute.
fontSizeAdjust : Str -> Attribute
fontSizeAdjust = attribute "font-size-adjust"

## Construct a [`font-stretch`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-stretch) attribute.
fontStretch : Str -> Attribute
fontStretch = attribute "font-stretch"

## Construct a [`font-style`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-style) attribute.
fontStyle : Str -> Attribute
fontStyle = attribute "font-style"

## Construct a [`font-variant`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-variant) attribute.
fontVariant : Str -> Attribute
fontVariant = attribute "font-variant"

## Construct a [`font-weight`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-weight) attribute.
fontWeight : Str -> Attribute
fontWeight = attribute "font-weight"

## Construct a [`fr`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fr) attribute.
fr : Str -> Attribute
fr = attribute "fr"

## Construct a [`from`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/from) attribute.
from : Str -> Attribute
from = attribute "from"

## Construct a [`fx`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fx) attribute.
fx : Str -> Attribute
fx = attribute "fx"

## Construct a [`fy`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fy) attribute.
fy : Str -> Attribute
fy = attribute "fy"

## Construct a [`gradientTransform`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/gradienttransform) attribute.
gradientTransform : Str -> Attribute
gradientTransform = attribute "gradientTransform"

## Construct a [`gradientUnits`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/gradientunits) attribute.
gradientUnits : Str -> Attribute
gradientUnits = attribute "gradientUnits"

## Construct a [`height`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/height) attribute.
height : Str -> Attribute
height = attribute "height"

## Construct a [`href`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/href) attribute.
href : Str -> Attribute
href = attribute "href"

## Construct an [`id`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/id) attribute.
id : Str -> Attribute
id = attribute "id"

## Construct an [`image-rendering`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/image-rendering) attribute.
imageRendering : Str -> Attribute
imageRendering = attribute "image-rendering"

## Construct an [`in`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/in) attribute.
in : Str -> Attribute
in = attribute "in"

## Construct an [`in2`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/in2) attribute.
in2 : Str -> Attribute
in2 = attribute "in2"

## Construct an [`intercept`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/intercept) attribute.
intercept : Str -> Attribute
intercept = attribute "intercept"

## Construct a [`k1`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k1) attribute.
k1 : Str -> Attribute
k1 = attribute "k1"

## Construct a [`k2`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k2) attribute.
k2 : Str -> Attribute
k2 = attribute "k2"

## Construct a [`k3`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k3) attribute.
k3 : Str -> Attribute
k3 = attribute "k3"

## Construct a [`k4`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k4) attribute.
k4 : Str -> Attribute
k4 = attribute "k4"

## Construct a [`kernelMatrix`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/kernelmatrix) attribute.
kernelMatrix : Str -> Attribute
kernelMatrix = attribute "kernelMatrix"

## Construct a [`kernelUnitLength`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/kernelunitlength) attribute.
kernelUnitLength : Str -> Attribute
kernelUnitLength = attribute "kernelUnitLength"

## Construct a [`keyPoints`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/keypoints) attribute.
keyPoints : Str -> Attribute
keyPoints = attribute "keyPoints"

## Construct a [`keySplines`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/keysplines) attribute.
keySplines : Str -> Attribute
keySplines = attribute "keySplines"

## Construct a [`keyTimes`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/keytimes) attribute.
keyTimes : Str -> Attribute
keyTimes = attribute "keyTimes"

## Construct a [`lang`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lang) attribute.
lang : Str -> Attribute
lang = attribute "lang"

## Construct a [`lengthAdjust`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lengthadjust) attribute.
lengthAdjust : Str -> Attribute
lengthAdjust = attribute "lengthAdjust"

## Construct a [`letter-spacing`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/letter-spacing) attribute.
letterSpacing : Str -> Attribute
letterSpacing = attribute "letter-spacing"

## Construct a [`lighting-color`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lighting-color) attribute.
lightingColor : Str -> Attribute
lightingColor = attribute "lighting-color"

## Construct a [`limitingConeAngle`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/limitingconeangle) attribute.
limitingConeAngle : Str -> Attribute
limitingConeAngle = attribute "limitingConeAngle"

## Construct a [`marker-end`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/marker-end) attribute.
markerEnd : Str -> Attribute
markerEnd = attribute "marker-end"

## Construct a [`markerHeight`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/markerheight) attribute.
markerHeight : Str -> Attribute
markerHeight = attribute "markerHeight"

## Construct a [`marker-mid`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/marker-mid) attribute.
markerMid : Str -> Attribute
markerMid = attribute "marker-mid"

## Construct a [`marker-start`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/marker-start) attribute.
markerStart : Str -> Attribute
markerStart = attribute "marker-start"

## Construct a [`markerUnits`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/markerunits) attribute.
markerUnits : Str -> Attribute
markerUnits = attribute "markerUnits"

## Construct a [`markerWidth`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/markerwidth) attribute.
markerWidth : Str -> Attribute
markerWidth = attribute "markerWidth"

## Construct a [`mask`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/mask) attribute.
mask : Str -> Attribute
mask = attribute "mask"

## Construct a [`maskContentUnits`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/maskcontentunits) attribute.
maskContentUnits : Str -> Attribute
maskContentUnits = attribute "maskContentUnits"

## Construct a [`maskUnits`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/maskunits) attribute.
maskUnits : Str -> Attribute
maskUnits = attribute "maskUnits"

## Construct a [`max`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/max) attribute.
max : Str -> Attribute
max = attribute "max"

## Construct a [`media`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/media) attribute.
media : Str -> Attribute
media = attribute "media"

## Construct a [`method`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/method) attribute.
method : Str -> Attribute
method = attribute "method"

## Construct a [`min`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/min) attribute.
min : Str -> Attribute
min = attribute "min"

## Construct a [`mode`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/mode) attribute.
mode : Str -> Attribute
mode = attribute "mode"

## Construct a [`numOctaves`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/numoctaves) attribute.
numOctaves : Str -> Attribute
numOctaves = attribute "numOctaves"

## Construct an [`onclick`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onclick) attribute.
onclick : Str -> Attribute
onclick = attribute "onclick"

## Construct an [`opacity`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/opacity) attribute.
opacity : Str -> Attribute
opacity = attribute "opacity"

## Construct an [`operator`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/operator) attribute.
operator : Str -> Attribute
operator = attribute "operator"

## Construct an [`order`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/order) attribute.
order : Str -> Attribute
order = attribute "order"

## Construct an [`orient`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/orient) attribute.
orient : Str -> Attribute
orient = attribute "orient"

## Construct an [`origin`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/origin) attribute.
origin : Str -> Attribute
origin = attribute "origin"

## Construct an [`overflow`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/overflow) attribute.
overflow : Str -> Attribute
overflow = attribute "overflow"

## Construct an [`overline-position`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/overline-position) attribute.
overlinePosition : Str -> Attribute
overlinePosition = attribute "overline-position"

## Construct an [`overline-thickness`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/overline-thickness) attribute.
overlineThickness : Str -> Attribute
overlineThickness = attribute "overline-thickness"

## Construct a [`paint-order`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/paint-order) attribute.
paintOrder : Str -> Attribute
paintOrder = attribute "paint-order"

## Construct a [`path`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/path) attribute.
path : Str -> Attribute
path = attribute "path"

## Construct a [`pathLength`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pathlength) attribute.
pathLength : Str -> Attribute
pathLength = attribute "pathLength"

## Construct a [`patternContentUnits`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/patterncontentunits) attribute.
patternContentUnits : Str -> Attribute
patternContentUnits = attribute "patternContentUnits"

## Construct a [`patternTransform`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/patterntransform) attribute.
patternTransform : Str -> Attribute
patternTransform = attribute "patternTransform"

## Construct a [`patternUnits`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/patternunits) attribute.
patternUnits : Str -> Attribute
patternUnits = attribute "patternUnits"

## Construct a [`pointer-events`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointer-events) attribute.
pointerEvents : Str -> Attribute
pointerEvents = attribute "pointer-events"

## Construct a [`points`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/points) attribute.
points : Str -> Attribute
points = attribute "points"

## Construct a [`pointsAtX`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointsatx) attribute.
pointsAtX : Str -> Attribute
pointsAtX = attribute "pointsAtX"

## Construct a [`pointsAtY`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointsaty) attribute.
pointsAtY : Str -> Attribute
pointsAtY = attribute "pointsAtY"

## Construct a [`pointsAtZ`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointsatz) attribute.
pointsAtZ : Str -> Attribute
pointsAtZ = attribute "pointsAtZ"

## Construct a [`preserveAlpha`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/preservealpha) attribute.
preserveAlpha : Str -> Attribute
preserveAlpha = attribute "preserveAlpha"

## Construct a [`preserveAspectRatio`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/preserveaspectratio) attribute.
preserveAspectRatio : Str -> Attribute
preserveAspectRatio = attribute "preserveAspectRatio"

## Construct a [`primitiveUnits`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/primitiveunits) attribute.
primitiveUnits : Str -> Attribute
primitiveUnits = attribute "primitiveUnits"

## Construct a [`r`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/r) attribute.
r : Str -> Attribute
r = attribute "r"

## Construct a [`radius`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/radius) attribute.
radius : Str -> Attribute
radius = attribute "radius"

## Construct a [`refX`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/refx) attribute.
refX : Str -> Attribute
refX = attribute "refX"

## Construct a [`refY`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/refy) attribute.
refY : Str -> Attribute
refY = attribute "refY"

## Construct a [`repeatCount`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/repeatcount) attribute.
repeatCount : Str -> Attribute
repeatCount = attribute "repeatCount"

## Construct a [`repeatDur`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/repeatdur) attribute.
repeatDur : Str -> Attribute
repeatDur = attribute "repeatDur"

## Construct a [`restart`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/restart) attribute.
restart : Str -> Attribute
restart = attribute "restart"

## Construct a [`result`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/result) attribute.
result : Str -> Attribute
result = attribute "result"

## Construct a [`rotate`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/rotate) attribute.
rotate : Str -> Attribute
rotate = attribute "rotate"

## Construct a [`rx`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/rx) attribute.
rx : Str -> Attribute
rx = attribute "rx"

## Construct a [`ry`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ry) attribute.
ry : Str -> Attribute
ry = attribute "ry"

## Construct a [`scale`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/scale) attribute.
scale : Str -> Attribute
scale = attribute "scale"

## Construct a [`seed`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/seed) attribute.
seed : Str -> Attribute
seed = attribute "seed"

## Construct a [`shape-rendering`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/shape-rendering) attribute.
shapeRendering : Str -> Attribute
shapeRendering = attribute "shape-rendering"

## Construct a [`side`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/side) attribute.
side : Str -> Attribute
side = attribute "side"

## Construct a [`spacing`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/spacing) attribute.
spacing : Str -> Attribute
spacing = attribute "spacing"

## Construct a [`specularConstant`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/specularconstant) attribute.
specularConstant : Str -> Attribute
specularConstant = attribute "specularConstant"

## Construct a [`specularExponent`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/specularexponent) attribute.
specularExponent : Str -> Attribute
specularExponent = attribute "specularExponent"

## Construct a [`spreadMethod`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/spreadmethod) attribute.
spreadMethod : Str -> Attribute
spreadMethod = attribute "spreadMethod"

## Construct a [`startOffset`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/startoffset) attribute.
startOffset : Str -> Attribute
startOffset = attribute "startOffset"

## Construct a [`stdDeviation`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stddeviation) attribute.
stdDeviation : Str -> Attribute
stdDeviation = attribute "stdDeviation"

## Construct a [`stitchTiles`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stitchtiles) attribute.
stitchTiles : Str -> Attribute
stitchTiles = attribute "stitchTiles"

## Construct a [`stop-color`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stop-color) attribute.
stopColor : Str -> Attribute
stopColor = attribute "stop-color"

## Construct a [`stop-opacity`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stop-opacity) attribute.
stopOpacity : Str -> Attribute
stopOpacity = attribute "stop-opacity"

## Construct a [`strikethrough-position`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/strikethrough-position) attribute.
strikethroughPosition : Str -> Attribute
strikethroughPosition = attribute "strikethrough-position"

## Construct a [`strikethrough-thickness`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/strikethrough-thickness) attribute.
strikethroughThickness : Str -> Attribute
strikethroughThickness = attribute "strikethrough-thickness"

## Construct a [`stroke`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke) attribute.
stroke : Str -> Attribute
stroke = attribute "stroke"

## Construct a [`stroke-dasharray`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-dasharray) attribute.
strokeDasharray : Str -> Attribute
strokeDasharray = attribute "stroke-dasharray"

## Construct a [`stroke-dashoffset`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-dashoffset) attribute.
strokeDashoffset : Str -> Attribute
strokeDashoffset = attribute "stroke-dashoffset"

## Construct a [`stroke-linecap`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-linecap) attribute.
strokeLinecap : Str -> Attribute
strokeLinecap = attribute "stroke-linecap"

## Construct a [`stroke-linejoin`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-linejoin) attribute.
strokeLinejoin : Str -> Attribute
strokeLinejoin = attribute "stroke-linejoin"

## Construct a [`stroke-miterlimit`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-miterlimit) attribute.
strokeMiterlimit : Str -> Attribute
strokeMiterlimit = attribute "stroke-miterlimit"

## Construct a [`stroke-opacity`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-opacity) attribute.
strokeOpacity : Str -> Attribute
strokeOpacity = attribute "stroke-opacity"

## Construct a [`stroke-width`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-width) attribute.
strokeWidth : Str -> Attribute
strokeWidth = attribute "stroke-width"

## Construct a [`style`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/style) attribute.
style : Str -> Attribute
style = attribute "style"

## Construct a [`surfaceScale`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/surfacescale) attribute.
surfaceScale : Str -> Attribute
surfaceScale = attribute "surfaceScale"

## Construct a [`systemLanguage`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/systemlanguage) attribute.
systemLanguage : Str -> Attribute
systemLanguage = attribute "systemLanguage"

## Construct a [`tabindex`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/tabindex) attribute.
tabindex : Str -> Attribute
tabindex = attribute "tabindex"

## Construct a [`tableValues`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/tablevalues) attribute.
tableValues : Str -> Attribute
tableValues = attribute "tableValues"

## Construct a [`target`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/target) attribute.
target : Str -> Attribute
target = attribute "target"

## Construct a [`targetX`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/targetx) attribute.
targetX : Str -> Attribute
targetX = attribute "targetX"

## Construct a [`targetY`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/targety) attribute.
targetY : Str -> Attribute
targetY = attribute "targetY"

## Construct a [`text-anchor`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/text-anchor) attribute.
textAnchor : Str -> Attribute
textAnchor = attribute "text-anchor"

## Construct a [`text-decoration`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/text-decoration) attribute.
textDecoration : Str -> Attribute
textDecoration = attribute "text-decoration"

## Construct a [`textLength`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/textlength) attribute.
textLength : Str -> Attribute
textLength = attribute "textLength"

## Construct a [`text-rendering`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/text-rendering) attribute.
textRendering : Str -> Attribute
textRendering = attribute "text-rendering"

## Construct a [`to`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/to) attribute.
to : Str -> Attribute
to = attribute "to"

## Construct a [`transform`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/transform) attribute.
transform : Str -> Attribute
transform = attribute "transform"

## Construct a [`transform-origin`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/transform-origin) attribute.
transformOrigin : Str -> Attribute
transformOrigin = attribute "transform-origin"

## Construct a [`type`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/type) attribute.
type : Str -> Attribute
type = attribute "type"

## Construct an [`underline-position`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/underline-position) attribute.
underlinePosition : Str -> Attribute
underlinePosition = attribute "underline-position"

## Construct an [`underline-thickness`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/underline-thickness) attribute.
underlineThickness : Str -> Attribute
underlineThickness = attribute "underline-thickness"

## Construct an [`unicode-bidi`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/unicode-bidi) attribute.
unicodeBidi : Str -> Attribute
unicodeBidi = attribute "unicode-bidi"

## Construct a [`values`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/values) attribute.
values : Str -> Attribute
values = attribute "values"

## Construct a [`vector-effect`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/vector-effect) attribute.
vectorEffect : Str -> Attribute
vectorEffect = attribute "vector-effect"

## Construct a [`viewBox`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/viewbox) attribute.
viewBox : Str -> Attribute
viewBox = attribute "viewBox"

## Construct a [`visibility`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/visibility) attribute.
visibility : Str -> Attribute
visibility = attribute "visibility"

## Construct a [`width`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/width) attribute.
width : Str -> Attribute
width = attribute "width"

## Construct a [`word-spacing`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/word-spacing) attribute.
wordSpacing : Str -> Attribute
wordSpacing = attribute "word-spacing"

## Construct a [`writing-mode`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/writing-mode) attribute.
writingMode : Str -> Attribute
writingMode = attribute "writing-mode"

## Construct a [`x`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x) attribute.
x : Str -> Attribute
x = attribute "x"

## Construct a [`x1`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x1) attribute.
x1 : Str -> Attribute
x1 = attribute "x1"

## Construct a [`x2`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x2) attribute.
x2 : Str -> Attribute
x2 = attribute "x2"

## Construct a [`xChannelSelector`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xchannelselector) attribute.
xChannelSelector : Str -> Attribute
xChannelSelector = attribute "xChannelSelector"

## Construct a `xmlns` attribute.
xmlns : Str -> Attribute
xmlns = attribute "xmlns"

## Construct a `xmlns:xlink` attribute.
xmlnsXlink : Str -> Attribute
xmlnsXlink = attribute "xmlns:xlink"

## Construct a [`y`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y) attribute.
y : Str -> Attribute
y = attribute "y"

## Construct a [`y1`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y1) attribute.
y1 : Str -> Attribute
y1 = attribute "y1"

## Construct a [`y2`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y2) attribute.
y2 : Str -> Attribute
y2 = attribute "y2"

## Construct a [`yChannelSelector`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ychannelselector) attribute.
yChannelSelector : Str -> Attribute
yChannelSelector = attribute "yChannelSelector"

## Construct a [`z`](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/z) attribute.
z : Str -> Attribute
z = attribute "z"
