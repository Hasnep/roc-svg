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

## Construct an `accumulate` attribute.
##
## See the [accumulate attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/accumulate) for more information.
accumulate : Str -> Attribute
accumulate = attribute "accumulate"

## Construct an `additive` attribute.
##
## See the [additive attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/additive) for more information.
additive : Str -> Attribute
additive = attribute "additive"

## Construct an `alignment-baseline` attribute.
##
## See the [alignment-baseline attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/alignment-baseline) for more information.
alignmentBaseline : Str -> Attribute
alignmentBaseline = attribute "alignment-baseline"

## Construct an `amplitude` attribute.
##
## See the [amplitude attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/amplitude) for more information.
amplitude : Str -> Attribute
amplitude = attribute "amplitude"

## Construct an `attributeName` attribute.
##
## See the [attributeName attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/attributename) for more information.
attributeName : Str -> Attribute
attributeName = attribute "attributeName"

## Construct an `azimuth` attribute.
##
## See the [azimuth attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/azimuth) for more information.
azimuth : Str -> Attribute
azimuth = attribute "azimuth"

## Construct a `baseFrequency` attribute.
##
## See the [baseFrequency attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/basefrequency) for more information.
baseFrequency : Str -> Attribute
baseFrequency = attribute "baseFrequency"

## Construct a `baseline-shift` attribute.
##
## See the [baseline-shift attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/baseline-shift) for more information.
baselineShift : Str -> Attribute
baselineShift = attribute "baseline-shift"

## Construct a `begin` attribute.
##
## See the [begin attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/begin) for more information.
begin : Str -> Attribute
begin = attribute "begin"

## Construct a `bias` attribute.
##
## See the [bias attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/bias) for more information.
bias : Str -> Attribute
bias = attribute "bias"

## Construct a `by` attribute.
##
## See the [by attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/by) for more information.
by : Str -> Attribute
by = attribute "by"

## Construct a `calcMode` attribute.
##
## See the [calcMode attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/calcmode) for more information.
calcMode : Str -> Attribute
calcMode = attribute "calcMode"

## Construct a `class` attribute.
##
## See the [class attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/class) for more information.
class : Str -> Attribute
class = attribute "class"

## Construct a `clip-path` attribute.
##
## See the [clip-path attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/clip-path) for more information.
clipPath : Str -> Attribute
clipPath = attribute "clip-path"

## Construct a `clipPathUnits` attribute.
##
## See the [clipPathUnits attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/clippathunits) for more information.
clipPathUnits : Str -> Attribute
clipPathUnits = attribute "clipPathUnits"

## Construct a `clip-rule` attribute.
##
## See the [clip-rule attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/clip-rule) for more information.
clipRule : Str -> Attribute
clipRule = attribute "clip-rule"

## Construct a `color` attribute.
##
## See the [color attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/color) for more information.
color : Str -> Attribute
color = attribute "color"

## Construct a `color-interpolation` attribute.
##
## See the [color-interpolation attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/color-interpolation) for more information.
colorInterpolation : Str -> Attribute
colorInterpolation = attribute "color-interpolation"

## Construct a `color-interpolation-filters` attribute.
##
## See the [color-interpolation-filters attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/color-interpolation-filters) for more information.
colorInterpolationFilters : Str -> Attribute
colorInterpolationFilters = attribute "color-interpolation-filters"

## Construct a `cursor` attribute.
##
## See the [cursor attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cursor) for more information.
cursor : Str -> Attribute
cursor = attribute "cursor"

## Construct a `cx` attribute.
##
## See the [cx attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cx) for more information.
cx : Str -> Attribute
cx = attribute "cx"

## Construct a `cy` attribute.
##
## See the [cy attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cy) for more information.
cy : Str -> Attribute
cy = attribute "cy"

## Construct a `d` attribute.
##
## See the [d attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/d) for more information.
d : Str -> Attribute
d = attribute "d"

## Construct a `diffuseConstant` attribute.
##
## See the [diffuseConstant attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/diffuseconstant) for more information.
diffuseConstant : Str -> Attribute
diffuseConstant = attribute "diffuseConstant"

## Construct a `direction` attribute.
##
## See the [direction attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/direction) for more information.
direction : Str -> Attribute
direction = attribute "direction"

## Construct a `display` attribute.
##
## See the [display attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/display) for more information.
display : Str -> Attribute
display = attribute "display"

## Construct a `divisor` attribute.
##
## See the [divisor attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/divisor) for more information.
divisor : Str -> Attribute
divisor = attribute "divisor"

## Construct a `dominant-baseline` attribute.
##
## See the [dominant-baseline attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dominant-baseline) for more information.
dominantBaseline : Str -> Attribute
dominantBaseline = attribute "dominant-baseline"

## Construct a `dur` attribute.
##
## See the [dur attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dur) for more information.
dur : Str -> Attribute
dur = attribute "dur"

## Construct a `dx` attribute.
##
## See the [dx attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dx) for more information.
dx : Str -> Attribute
dx = attribute "dx"

## Construct a `dy` attribute.
##
## See the [dy attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dy) for more information.
dy : Str -> Attribute
dy = attribute "dy"

## Construct an `edgeMode` attribute.
##
## See the [edgeMode attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/edgemode) for more information.
edgeMode : Str -> Attribute
edgeMode = attribute "edgeMode"

## Construct an `elevation` attribute.
##
## See the [elevation attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/elevation) for more information.
elevation : Str -> Attribute
elevation = attribute "elevation"

## Construct an `end` attribute.
##
## See the [end attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/end) for more information.
end : Str -> Attribute
end = attribute "end"

## Construct an `exponent` attribute.
##
## See the [exponent attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/exponent) for more information.
exponent : Str -> Attribute
exponent = attribute "exponent"

## Construct a `fill` attribute.
##
## See the [fill attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fill) for more information.
fill : Str -> Attribute
fill = attribute "fill"

## Construct a `fill-opacity` attribute.
##
## See the [fill-opacity attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fill-opacity) for more information.
fillOpacity : Str -> Attribute
fillOpacity = attribute "fill-opacity"

## Construct a `fill-rule` attribute.
##
## See the [fill-rule attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fill-rule) for more information.
fillRule : Str -> Attribute
fillRule = attribute "fill-rule"

## Construct a `filter` attribute.
##
## See the [filter attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/filter) for more information.
filter : Str -> Attribute
filter = attribute "filter"

## Construct a `filterUnits` attribute.
##
## See the [filterUnits attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/filterunits) for more information.
filterUnits : Str -> Attribute
filterUnits = attribute "filterUnits"

## Construct a `flood-color` attribute.
##
## See the [flood-color attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/flood-color) for more information.
floodColor : Str -> Attribute
floodColor = attribute "flood-color"

## Construct a `flood-opacity` attribute.
##
## See the [flood-opacity attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/flood-opacity) for more information.
floodOpacity : Str -> Attribute
floodOpacity = attribute "flood-opacity"

## Construct a `font-family` attribute.
##
## See the [font-family attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-family) for more information.
fontFamily : Str -> Attribute
fontFamily = attribute "font-family"

## Construct a `font-size` attribute.
##
## See the [font-size attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-size) for more information.
fontSize : Str -> Attribute
fontSize = attribute "font-size"

## Construct a `font-size-adjust` attribute.
##
## See the [font-size-adjust attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-size-adjust) for more information.
fontSizeAdjust : Str -> Attribute
fontSizeAdjust = attribute "font-size-adjust"

## Construct a `font-stretch` attribute.
##
## See the [font-stretch attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-stretch) for more information.
fontStretch : Str -> Attribute
fontStretch = attribute "font-stretch"

## Construct a `font-style` attribute.
##
## See the [font-style attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-style) for more information.
fontStyle : Str -> Attribute
fontStyle = attribute "font-style"

## Construct a `font-variant` attribute.
##
## See the [font-variant attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-variant) for more information.
fontVariant : Str -> Attribute
fontVariant = attribute "font-variant"

## Construct a `font-weight` attribute.
##
## See the [font-weight attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-weight) for more information.
fontWeight : Str -> Attribute
fontWeight = attribute "font-weight"

## Construct a `fr` attribute.
##
## See the [fr attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fr) for more information.
fr : Str -> Attribute
fr = attribute "fr"

## Construct a `from` attribute.
##
## See the [from attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/from) for more information.
from : Str -> Attribute
from = attribute "from"

## Construct a `fx` attribute.
##
## See the [fx attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fx) for more information.
fx : Str -> Attribute
fx = attribute "fx"

## Construct a `fy` attribute.
##
## See the [fy attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fy) for more information.
fy : Str -> Attribute
fy = attribute "fy"

## Construct a `gradientTransform` attribute.
##
## See the [gradientTransform attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/gradienttransform) for more information.
gradientTransform : Str -> Attribute
gradientTransform = attribute "gradientTransform"

## Construct a `gradientUnits` attribute.
##
## See the [gradientUnits attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/gradientunits) for more information.
gradientUnits : Str -> Attribute
gradientUnits = attribute "gradientUnits"

## Construct a `height` attribute.
##
## See the [height attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/height) for more information.
height : Str -> Attribute
height = attribute "height"

## Construct a `href` attribute.
##
## See the [href attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/href) for more information.
href : Str -> Attribute
href = attribute "href"

## Construct an `id` attribute.
##
## See the [id attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/id) for more information.
id : Str -> Attribute
id = attribute "id"

## Construct an `image-rendering` attribute.
##
## See the [image-rendering attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/image-rendering) for more information.
imageRendering : Str -> Attribute
imageRendering = attribute "image-rendering"

## Construct an `in` attribute.
##
## See the [in attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/in) for more information.
in : Str -> Attribute
in = attribute "in"

## Construct an `in2` attribute.
##
## See the [in2 attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/in2) for more information.
in2 : Str -> Attribute
in2 = attribute "in2"

## Construct an `intercept` attribute.
##
## See the [intercept attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/intercept) for more information.
intercept : Str -> Attribute
intercept = attribute "intercept"

## Construct a `k1` attribute.
##
## See the [k1 attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k1) for more information.
k1 : Str -> Attribute
k1 = attribute "k1"

## Construct a `k2` attribute.
##
## See the [k2 attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k2) for more information.
k2 : Str -> Attribute
k2 = attribute "k2"

## Construct a `k3` attribute.
##
## See the [k3 attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k3) for more information.
k3 : Str -> Attribute
k3 = attribute "k3"

## Construct a `k4` attribute.
##
## See the [k4 attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k4) for more information.
k4 : Str -> Attribute
k4 = attribute "k4"

## Construct a `kernelMatrix` attribute.
##
## See the [kernelMatrix attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/kernelmatrix) for more information.
kernelMatrix : Str -> Attribute
kernelMatrix = attribute "kernelMatrix"

## Construct a `kernelUnitLength` attribute.
##
## See the [kernelUnitLength attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/kernelunitlength) for more information.
kernelUnitLength : Str -> Attribute
kernelUnitLength = attribute "kernelUnitLength"

## Construct a `keyPoints` attribute.
##
## See the [keyPoints attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/keypoints) for more information.
keyPoints : Str -> Attribute
keyPoints = attribute "keyPoints"

## Construct a `keySplines` attribute.
##
## See the [keySplines attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/keysplines) for more information.
keySplines : Str -> Attribute
keySplines = attribute "keySplines"

## Construct a `keyTimes` attribute.
##
## See the [keyTimes attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/keytimes) for more information.
keyTimes : Str -> Attribute
keyTimes = attribute "keyTimes"

## Construct a `lang` attribute.
##
## See the [lang attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lang) for more information.
lang : Str -> Attribute
lang = attribute "lang"

## Construct a `lengthAdjust` attribute.
##
## See the [lengthAdjust attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lengthadjust) for more information.
lengthAdjust : Str -> Attribute
lengthAdjust = attribute "lengthAdjust"

## Construct a `letter-spacing` attribute.
##
## See the [letter-spacing attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/letter-spacing) for more information.
letterSpacing : Str -> Attribute
letterSpacing = attribute "letter-spacing"

## Construct a `lighting-color` attribute.
##
## See the [lighting-color attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lighting-color) for more information.
lightingColor : Str -> Attribute
lightingColor = attribute "lighting-color"

## Construct a `limitingConeAngle` attribute.
##
## See the [limitingConeAngle attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/limitingconeangle) for more information.
limitingConeAngle : Str -> Attribute
limitingConeAngle = attribute "limitingConeAngle"

## Construct a `marker-end` attribute.
##
## See the [marker-end attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/marker-end) for more information.
markerEnd : Str -> Attribute
markerEnd = attribute "marker-end"

## Construct a `markerHeight` attribute.
##
## See the [markerHeight attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/markerheight) for more information.
markerHeight : Str -> Attribute
markerHeight = attribute "markerHeight"

## Construct a `marker-mid` attribute.
##
## See the [marker-mid attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/marker-mid) for more information.
markerMid : Str -> Attribute
markerMid = attribute "marker-mid"

## Construct a `marker-start` attribute.
##
## See the [marker-start attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/marker-start) for more information.
markerStart : Str -> Attribute
markerStart = attribute "marker-start"

## Construct a `markerUnits` attribute.
##
## See the [markerUnits attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/markerunits) for more information.
markerUnits : Str -> Attribute
markerUnits = attribute "markerUnits"

## Construct a `markerWidth` attribute.
##
## See the [markerWidth attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/markerwidth) for more information.
markerWidth : Str -> Attribute
markerWidth = attribute "markerWidth"

## Construct a `mask` attribute.
##
## See the [mask attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/mask) for more information.
mask : Str -> Attribute
mask = attribute "mask"

## Construct a `maskContentUnits` attribute.
##
## See the [maskContentUnits attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/maskcontentunits) for more information.
maskContentUnits : Str -> Attribute
maskContentUnits = attribute "maskContentUnits"

## Construct a `maskUnits` attribute.
##
## See the [maskUnits attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/maskunits) for more information.
maskUnits : Str -> Attribute
maskUnits = attribute "maskUnits"

## Construct a `max` attribute.
##
## See the [max attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/max) for more information.
max : Str -> Attribute
max = attribute "max"

## Construct a `media` attribute.
##
## See the [media attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/media) for more information.
media : Str -> Attribute
media = attribute "media"

## Construct a `method` attribute.
##
## See the [method attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/method) for more information.
method : Str -> Attribute
method = attribute "method"

## Construct a `min` attribute.
##
## See the [min attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/min) for more information.
min : Str -> Attribute
min = attribute "min"

## Construct a `mode` attribute.
##
## See the [mode attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/mode) for more information.
mode : Str -> Attribute
mode = attribute "mode"

## Construct a `numOctaves` attribute.
##
## See the [numOctaves attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/numoctaves) for more information.
numOctaves : Str -> Attribute
numOctaves = attribute "numOctaves"

## Construct an `onclick` attribute.
##
## See the [onclick attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onclick) for more information.
onclick : Str -> Attribute
onclick = attribute "onclick"

## Construct an `opacity` attribute.
##
## See the [opacity attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/opacity) for more information.
opacity : Str -> Attribute
opacity = attribute "opacity"

## Construct an `operator` attribute.
##
## See the [operator attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/operator) for more information.
operator : Str -> Attribute
operator = attribute "operator"

## Construct an `order` attribute.
##
## See the [order attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/order) for more information.
order : Str -> Attribute
order = attribute "order"

## Construct an `orient` attribute.
##
## See the [orient attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/orient) for more information.
orient : Str -> Attribute
orient = attribute "orient"

## Construct an `origin` attribute.
##
## See the [origin attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/origin) for more information.
origin : Str -> Attribute
origin = attribute "origin"

## Construct an `overflow` attribute.
##
## See the [overflow attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/overflow) for more information.
overflow : Str -> Attribute
overflow = attribute "overflow"

## Construct an `overline-position` attribute.
##
## See the [overline-position attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/overline-position) for more information.
overlinePosition : Str -> Attribute
overlinePosition = attribute "overline-position"

## Construct an `overline-thickness` attribute.
##
## See the [overline-thickness attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/overline-thickness) for more information.
overlineThickness : Str -> Attribute
overlineThickness = attribute "overline-thickness"

## Construct a `paint-order` attribute.
##
## See the [paint-order attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/paint-order) for more information.
paintOrder : Str -> Attribute
paintOrder = attribute "paint-order"

## Construct a `path` attribute.
##
## See the [path attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/path) for more information.
path : Str -> Attribute
path = attribute "path"

## Construct a `pathLength` attribute.
##
## See the [pathLength attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pathlength) for more information.
pathLength : Str -> Attribute
pathLength = attribute "pathLength"

## Construct a `patternContentUnits` attribute.
##
## See the [patternContentUnits attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/patterncontentunits) for more information.
patternContentUnits : Str -> Attribute
patternContentUnits = attribute "patternContentUnits"

## Construct a `patternTransform` attribute.
##
## See the [patternTransform attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/patterntransform) for more information.
patternTransform : Str -> Attribute
patternTransform = attribute "patternTransform"

## Construct a `patternUnits` attribute.
##
## See the [patternUnits attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/patternunits) for more information.
patternUnits : Str -> Attribute
patternUnits = attribute "patternUnits"

## Construct a `pointer-events` attribute.
##
## See the [pointer-events attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointer-events) for more information.
pointerEvents : Str -> Attribute
pointerEvents = attribute "pointer-events"

## Construct a `points` attribute.
##
## See the [points attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/points) for more information.
points : Str -> Attribute
points = attribute "points"

## Construct a `pointsAtX` attribute.
##
## See the [pointsAtX attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointsatx) for more information.
pointsAtX : Str -> Attribute
pointsAtX = attribute "pointsAtX"

## Construct a `pointsAtY` attribute.
##
## See the [pointsAtY attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointsaty) for more information.
pointsAtY : Str -> Attribute
pointsAtY = attribute "pointsAtY"

## Construct a `pointsAtZ` attribute.
##
## See the [pointsAtZ attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointsatz) for more information.
pointsAtZ : Str -> Attribute
pointsAtZ = attribute "pointsAtZ"

## Construct a `preserveAlpha` attribute.
##
## See the [preserveAlpha attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/preservealpha) for more information.
preserveAlpha : Str -> Attribute
preserveAlpha = attribute "preserveAlpha"

## Construct a `preserveAspectRatio` attribute.
##
## See the [preserveAspectRatio attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/preserveaspectratio) for more information.
preserveAspectRatio : Str -> Attribute
preserveAspectRatio = attribute "preserveAspectRatio"

## Construct a `primitiveUnits` attribute.
##
## See the [primitiveUnits attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/primitiveunits) for more information.
primitiveUnits : Str -> Attribute
primitiveUnits = attribute "primitiveUnits"

## Construct a `r` attribute.
##
## See the [r attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/r) for more information.
r : Str -> Attribute
r = attribute "r"

## Construct a `radius` attribute.
##
## See the [radius attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/radius) for more information.
radius : Str -> Attribute
radius = attribute "radius"

## Construct a `refX` attribute.
##
## See the [refX attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/refx) for more information.
refX : Str -> Attribute
refX = attribute "refX"

## Construct a `refY` attribute.
##
## See the [refY attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/refy) for more information.
refY : Str -> Attribute
refY = attribute "refY"

## Construct a `repeatCount` attribute.
##
## See the [repeatCount attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/repeatcount) for more information.
repeatCount : Str -> Attribute
repeatCount = attribute "repeatCount"

## Construct a `repeatDur` attribute.
##
## See the [repeatDur attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/repeatdur) for more information.
repeatDur : Str -> Attribute
repeatDur = attribute "repeatDur"

## Construct a `restart` attribute.
##
## See the [restart attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/restart) for more information.
restart : Str -> Attribute
restart = attribute "restart"

## Construct a `result` attribute.
##
## See the [result attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/result) for more information.
result : Str -> Attribute
result = attribute "result"

## Construct a `rotate` attribute.
##
## See the [rotate attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/rotate) for more information.
rotate : Str -> Attribute
rotate = attribute "rotate"

## Construct a `rx` attribute.
##
## See the [rx attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/rx) for more information.
rx : Str -> Attribute
rx = attribute "rx"

## Construct a `ry` attribute.
##
## See the [ry attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ry) for more information.
ry : Str -> Attribute
ry = attribute "ry"

## Construct a `scale` attribute.
##
## See the [scale attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/scale) for more information.
scale : Str -> Attribute
scale = attribute "scale"

## Construct a `seed` attribute.
##
## See the [seed attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/seed) for more information.
seed : Str -> Attribute
seed = attribute "seed"

## Construct a `shape-rendering` attribute.
##
## See the [shape-rendering attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/shape-rendering) for more information.
shapeRendering : Str -> Attribute
shapeRendering = attribute "shape-rendering"

## Construct a `side` attribute.
##
## See the [side attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/side) for more information.
side : Str -> Attribute
side = attribute "side"

## Construct a `spacing` attribute.
##
## See the [spacing attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/spacing) for more information.
spacing : Str -> Attribute
spacing = attribute "spacing"

## Construct a `specularConstant` attribute.
##
## See the [specularConstant attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/specularconstant) for more information.
specularConstant : Str -> Attribute
specularConstant = attribute "specularConstant"

## Construct a `specularExponent` attribute.
##
## See the [specularExponent attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/specularexponent) for more information.
specularExponent : Str -> Attribute
specularExponent = attribute "specularExponent"

## Construct a `spreadMethod` attribute.
##
## See the [spreadMethod attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/spreadmethod) for more information.
spreadMethod : Str -> Attribute
spreadMethod = attribute "spreadMethod"

## Construct a `startOffset` attribute.
##
## See the [startOffset attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/startoffset) for more information.
startOffset : Str -> Attribute
startOffset = attribute "startOffset"

## Construct a `stdDeviation` attribute.
##
## See the [stdDeviation attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stddeviation) for more information.
stdDeviation : Str -> Attribute
stdDeviation = attribute "stdDeviation"

## Construct a `stitchTiles` attribute.
##
## See the [stitchTiles attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stitchtiles) for more information.
stitchTiles : Str -> Attribute
stitchTiles = attribute "stitchTiles"

## Construct a `stop-color` attribute.
##
## See the [stop-color attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stop-color) for more information.
stopColor : Str -> Attribute
stopColor = attribute "stop-color"

## Construct a `stop-opacity` attribute.
##
## See the [stop-opacity attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stop-opacity) for more information.
stopOpacity : Str -> Attribute
stopOpacity = attribute "stop-opacity"

## Construct a `strikethrough-position` attribute.
##
## See the [strikethrough-position attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/strikethrough-position) for more information.
strikethroughPosition : Str -> Attribute
strikethroughPosition = attribute "strikethrough-position"

## Construct a `strikethrough-thickness` attribute.
##
## See the [strikethrough-thickness attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/strikethrough-thickness) for more information.
strikethroughThickness : Str -> Attribute
strikethroughThickness = attribute "strikethrough-thickness"

## Construct a `stroke` attribute.
##
## See the [stroke attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke) for more information.
stroke : Str -> Attribute
stroke = attribute "stroke"

## Construct a `stroke-dasharray` attribute.
##
## See the [stroke-dasharray attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-dasharray) for more information.
strokeDasharray : Str -> Attribute
strokeDasharray = attribute "stroke-dasharray"

## Construct a `stroke-dashoffset` attribute.
##
## See the [stroke-dashoffset attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-dashoffset) for more information.
strokeDashoffset : Str -> Attribute
strokeDashoffset = attribute "stroke-dashoffset"

## Construct a `stroke-linecap` attribute.
##
## See the [stroke-linecap attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-linecap) for more information.
strokeLinecap : Str -> Attribute
strokeLinecap = attribute "stroke-linecap"

## Construct a `stroke-linejoin` attribute.
##
## See the [stroke-linejoin attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-linejoin) for more information.
strokeLinejoin : Str -> Attribute
strokeLinejoin = attribute "stroke-linejoin"

## Construct a `stroke-miterlimit` attribute.
##
## See the [stroke-miterlimit attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-miterlimit) for more information.
strokeMiterlimit : Str -> Attribute
strokeMiterlimit = attribute "stroke-miterlimit"

## Construct a `stroke-opacity` attribute.
##
## See the [stroke-opacity attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-opacity) for more information.
strokeOpacity : Str -> Attribute
strokeOpacity = attribute "stroke-opacity"

## Construct a `stroke-width` attribute.
##
## See the [stroke-width attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-width) for more information.
strokeWidth : Str -> Attribute
strokeWidth = attribute "stroke-width"

## Construct a `style` attribute.
##
## See the [style attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/style) for more information.
style : Str -> Attribute
style = attribute "style"

## Construct a `surfaceScale` attribute.
##
## See the [surfaceScale attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/surfacescale) for more information.
surfaceScale : Str -> Attribute
surfaceScale = attribute "surfaceScale"

## Construct a `systemLanguage` attribute.
##
## See the [systemLanguage attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/systemlanguage) for more information.
systemLanguage : Str -> Attribute
systemLanguage = attribute "systemLanguage"

## Construct a `tabindex` attribute.
##
## See the [tabindex attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/tabindex) for more information.
tabindex : Str -> Attribute
tabindex = attribute "tabindex"

## Construct a `tableValues` attribute.
##
## See the [tableValues attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/tablevalues) for more information.
tableValues : Str -> Attribute
tableValues = attribute "tableValues"

## Construct a `target` attribute.
##
## See the [target attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/target) for more information.
target : Str -> Attribute
target = attribute "target"

## Construct a `targetX` attribute.
##
## See the [targetX attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/targetx) for more information.
targetX : Str -> Attribute
targetX = attribute "targetX"

## Construct a `targetY` attribute.
##
## See the [targetY attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/targety) for more information.
targetY : Str -> Attribute
targetY = attribute "targetY"

## Construct a `text-anchor` attribute.
##
## See the [text-anchor attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/text-anchor) for more information.
textAnchor : Str -> Attribute
textAnchor = attribute "text-anchor"

## Construct a `text-decoration` attribute.
##
## See the [text-decoration attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/text-decoration) for more information.
textDecoration : Str -> Attribute
textDecoration = attribute "text-decoration"

## Construct a `textLength` attribute.
##
## See the [textLength attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/textlength) for more information.
textLength : Str -> Attribute
textLength = attribute "textLength"

## Construct a `text-rendering` attribute.
##
## See the [text-rendering attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/text-rendering) for more information.
textRendering : Str -> Attribute
textRendering = attribute "text-rendering"

## Construct a `to` attribute.
##
## See the [to attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/to) for more information.
to : Str -> Attribute
to = attribute "to"

## Construct a `transform` attribute.
##
## See the [transform attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/transform) for more information.
transform : Str -> Attribute
transform = attribute "transform"

## Construct a `transform-origin` attribute.
##
## See the [transform-origin attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/transform-origin) for more information.
transformOrigin : Str -> Attribute
transformOrigin = attribute "transform-origin"

## Construct a `type` attribute.
##
## See the [type attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/type) for more information.
type : Str -> Attribute
type = attribute "type"

## Construct an `underline-position` attribute.
##
## See the [underline-position attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/underline-position) for more information.
underlinePosition : Str -> Attribute
underlinePosition = attribute "underline-position"

## Construct an `underline-thickness` attribute.
##
## See the [underline-thickness attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/underline-thickness) for more information.
underlineThickness : Str -> Attribute
underlineThickness = attribute "underline-thickness"

## Construct an `unicode-bidi` attribute.
##
## See the [unicode-bidi attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/unicode-bidi) for more information.
unicodeBidi : Str -> Attribute
unicodeBidi = attribute "unicode-bidi"

## Construct a `values` attribute.
##
## See the [values attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/values) for more information.
values : Str -> Attribute
values = attribute "values"

## Construct a `vector-effect` attribute.
##
## See the [vector-effect attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/vector-effect) for more information.
vectorEffect : Str -> Attribute
vectorEffect = attribute "vector-effect"

## Construct a `viewBox` attribute.
##
## See the [viewBox attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/viewbox) for more information.
viewBox : Str -> Attribute
viewBox = attribute "viewBox"

## Construct a `visibility` attribute.
##
## See the [visibility attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/visibility) for more information.
visibility : Str -> Attribute
visibility = attribute "visibility"

## Construct a `width` attribute.
##
## See the [width attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/width) for more information.
width : Str -> Attribute
width = attribute "width"

## Construct a `word-spacing` attribute.
##
## See the [word-spacing attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/word-spacing) for more information.
wordSpacing : Str -> Attribute
wordSpacing = attribute "word-spacing"

## Construct a `writing-mode` attribute.
##
## See the [writing-mode attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/writing-mode) for more information.
writingMode : Str -> Attribute
writingMode = attribute "writing-mode"

## Construct a `x` attribute.
##
## See the [x attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x) for more information.
x : Str -> Attribute
x = attribute "x"

## Construct a `x1` attribute.
##
## See the [x1 attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x1) for more information.
x1 : Str -> Attribute
x1 = attribute "x1"

## Construct a `x2` attribute.
##
## See the [x2 attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x2) for more information.
x2 : Str -> Attribute
x2 = attribute "x2"

## Construct a `xChannelSelector` attribute.
##
## See the [xChannelSelector attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xchannelselector) for more information.
xChannelSelector : Str -> Attribute
xChannelSelector = attribute "xChannelSelector"

## Construct a `xmlns` attribute.
xmlns : Str -> Attribute
xmlns = attribute "xmlns"

## Construct a `xmlns:xlink` attribute.
xmlnsXlink : Str -> Attribute
xmlnsXlink = attribute "xmlns:xlink"

## Construct a `y` attribute.
##
## See the [y attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y) for more information.
y : Str -> Attribute
y = attribute "y"

## Construct a `y1` attribute.
##
## See the [y1 attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y1) for more information.
y1 : Str -> Attribute
y1 = attribute "y1"

## Construct a `y2` attribute.
##
## See the [y2 attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y2) for more information.
y2 : Str -> Attribute
y2 = attribute "y2"

## Construct a `yChannelSelector` attribute.
##
## See the [yChannelSelector attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ychannelselector) for more information.
yChannelSelector : Str -> Attribute
yChannelSelector = attribute "yChannelSelector"

## Construct a `z` attribute.
##
## See the [z attribute page on MDN](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/z) for more information.
z : Str -> Attribute
z = attribute "z"
