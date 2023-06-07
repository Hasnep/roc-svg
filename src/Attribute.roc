interface Attribute
    exposes [
        Attribute,
        attribute,
        accumulate,
        additive,
        alignmentBaseline,
        amplitude,
        attributename,
        azimuth,
        basefrequency,
        baselineShift,
        begin,
        bias,
        by,
        calcmode,
        class,
        clipPath,
        clipRule,
        clippathunits,
        color,
        colorInterpolation,
        colorInterpolationFilters,
        cursor,
        cx,
        cy,
        d,
        diffuseconstant,
        direction,
        display,
        divisor,
        dominantBaseline,
        dur,
        dx,
        dy,
        edgemode,
        elevation,
        end,
        exponent,
        fill,
        fillOpacity,
        fillRule,
        filter,
        filterunits,
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
        gradienttransform,
        gradientunits,
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
        kernelmatrix,
        kernelunitlength,
        keypoints,
        keysplines,
        keytimes,
        lang,
        lengthadjust,
        letterSpacing,
        lightingColor,
        limitingconeangle,
        markerEnd,
        markerMid,
        markerStart,
        markerheight,
        markerunits,
        markerwidth,
        mask,
        maskcontentunits,
        maskunits,
        max,
        media,
        method,
        min,
        mode,
        numoctaves,
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
        pathlength,
        patterncontentunits,
        patterntransform,
        patternunits,
        pointerEvents,
        points,
        pointsatx,
        pointsaty,
        pointsatz,
        preservealpha,
        preserveaspectratio,
        primitiveunits,
        r,
        radius,
        refx,
        refy,
        repeatcount,
        repeatdur,
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
        specularconstant,
        specularexponent,
        spreadmethod,
        startoffset,
        stddeviation,
        stitchtiles,
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
        surfacescale,
        systemlanguage,
        tabindex,
        tablevalues,
        target,
        targetx,
        targety,
        textAnchor,
        textDecoration,
        textRendering,
        textlength,
        to,
        transform,
        transformOrigin,
        type,
        underlinePosition,
        underlineThickness,
        unicodeBidi,
        values,
        vectorEffect,
        viewbox,
        visibility,
        width,
        wordSpacing,
        writingMode,
        x,
        x1,
        x2,
        xchannelselector,
        y,
        y1,
        y2,
        ychannelselector,
        z,
    ]
    imports []

Attribute : [Attribute Str Str]

## Define a non-standard attribute.
## You can use this to add attributes that are not already supported.
attribute : Str -> (Str -> Attribute)
attribute = \attributeName ->
    \attributeValue -> Attribute attributeName attributeValue

## Construct a `accumulate` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/accumulate) for more information.
accumulate : Str -> Attribute
accumulate = attribute "accumulate"

## Construct a `additive` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/additive) for more information.
additive : Str -> Attribute
additive = attribute "additive"

## Construct a `alignment-baseline` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/alignment-baseline) for more information.
alignmentBaseline : Str -> Attribute
alignmentBaseline = attribute "alignment-baseline"

## Construct a `amplitude` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/amplitude) for more information.
amplitude : Str -> Attribute
amplitude = attribute "amplitude"

## Construct a `attributeName` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/attributename) for more information.
attributename : Str -> Attribute
attributename = attribute "attributeName"

## Construct a `azimuth` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/azimuth) for more information.
azimuth : Str -> Attribute
azimuth = attribute "azimuth"

## Construct a `baseFrequency` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/basefrequency) for more information.
basefrequency : Str -> Attribute
basefrequency = attribute "baseFrequency"

## Construct a `baseline-shift` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/baseline-shift) for more information.
baselineShift : Str -> Attribute
baselineShift = attribute "baseline-shift"

## Construct a `begin` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/begin) for more information.
begin : Str -> Attribute
begin = attribute "begin"

## Construct a `bias` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/bias) for more information.
bias : Str -> Attribute
bias = attribute "bias"

## Construct a `by` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/by) for more information.
by : Str -> Attribute
by = attribute "by"

## Construct a `calcMode` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/calcmode) for more information.
calcmode : Str -> Attribute
calcmode = attribute "calcMode"

## Construct a `class` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/class) for more information.
class : Str -> Attribute
class = attribute "class"

## Construct a `clip-path` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/clip-path) for more information.
clipPath : Str -> Attribute
clipPath = attribute "clip-path"

## Construct a `clip-rule` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/clip-rule) for more information.
clipRule : Str -> Attribute
clipRule = attribute "clip-rule"

## Construct a `clipPathUnits` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/clippathunits) for more information.
clippathunits : Str -> Attribute
clippathunits = attribute "clipPathUnits"

## Construct a `color` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/color) for more information.
color : Str -> Attribute
color = attribute "color"

## Construct a `color-interpolation` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/color-interpolation) for more information.
colorInterpolation : Str -> Attribute
colorInterpolation = attribute "color-interpolation"

## Construct a `color-interpolation-filters` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/color-interpolation-filters) for more information.
colorInterpolationFilters : Str -> Attribute
colorInterpolationFilters = attribute "color-interpolation-filters"

## Construct a `cursor` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cursor) for more information.
cursor : Str -> Attribute
cursor = attribute "cursor"

## Construct a `cx` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cx) for more information.
cx : Str -> Attribute
cx = attribute "cx"

## Construct a `cy` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cy) for more information.
cy : Str -> Attribute
cy = attribute "cy"

## Construct a `d` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/d) for more information.
d : Str -> Attribute
d = attribute "d"

## Construct a `diffuseConstant` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/diffuseconstant) for more information.
diffuseconstant : Str -> Attribute
diffuseconstant = attribute "diffuseConstant"

## Construct a `direction` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/direction) for more information.
direction : Str -> Attribute
direction = attribute "direction"

## Construct a `display` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/display) for more information.
display : Str -> Attribute
display = attribute "display"

## Construct a `divisor` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/divisor) for more information.
divisor : Str -> Attribute
divisor = attribute "divisor"

## Construct a `dominant-baseline` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dominant-baseline) for more information.
dominantBaseline : Str -> Attribute
dominantBaseline = attribute "dominant-baseline"

## Construct a `dur` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dur) for more information.
dur : Str -> Attribute
dur = attribute "dur"

## Construct a `dx` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dx) for more information.
dx : Str -> Attribute
dx = attribute "dx"

## Construct a `dy` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dy) for more information.
dy : Str -> Attribute
dy = attribute "dy"

## Construct a `edgeMode` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/edgemode) for more information.
edgemode : Str -> Attribute
edgemode = attribute "edgeMode"

## Construct a `elevation` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/elevation) for more information.
elevation : Str -> Attribute
elevation = attribute "elevation"

## Construct a `end` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/end) for more information.
end : Str -> Attribute
end = attribute "end"

## Construct a `exponent` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/exponent) for more information.
exponent : Str -> Attribute
exponent = attribute "exponent"

## Construct a `fill` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fill) for more information.
fill : Str -> Attribute
fill = attribute "fill"

## Construct a `fill-opacity` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fill-opacity) for more information.
fillOpacity : Str -> Attribute
fillOpacity = attribute "fill-opacity"

## Construct a `fill-rule` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fill-rule) for more information.
fillRule : Str -> Attribute
fillRule = attribute "fill-rule"

## Construct a `filter` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/filter) for more information.
filter : Str -> Attribute
filter = attribute "filter"

## Construct a `filterUnits` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/filterunits) for more information.
filterunits : Str -> Attribute
filterunits = attribute "filterUnits"

## Construct a `flood-color` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/flood-color) for more information.
floodColor : Str -> Attribute
floodColor = attribute "flood-color"

## Construct a `flood-opacity` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/flood-opacity) for more information.
floodOpacity : Str -> Attribute
floodOpacity = attribute "flood-opacity"

## Construct a `font-family` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-family) for more information.
fontFamily : Str -> Attribute
fontFamily = attribute "font-family"

## Construct a `font-size` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-size) for more information.
fontSize : Str -> Attribute
fontSize = attribute "font-size"

## Construct a `font-size-adjust` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-size-adjust) for more information.
fontSizeAdjust : Str -> Attribute
fontSizeAdjust = attribute "font-size-adjust"

## Construct a `font-stretch` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-stretch) for more information.
fontStretch : Str -> Attribute
fontStretch = attribute "font-stretch"

## Construct a `font-style` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-style) for more information.
fontStyle : Str -> Attribute
fontStyle = attribute "font-style"

## Construct a `font-variant` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-variant) for more information.
fontVariant : Str -> Attribute
fontVariant = attribute "font-variant"

## Construct a `font-weight` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/font-weight) for more information.
fontWeight : Str -> Attribute
fontWeight = attribute "font-weight"

## Construct a `fr` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fr) for more information.
fr : Str -> Attribute
fr = attribute "fr"

## Construct a `from` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/from) for more information.
from : Str -> Attribute
from = attribute "from"

## Construct a `fx` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fx) for more information.
fx : Str -> Attribute
fx = attribute "fx"

## Construct a `fy` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fy) for more information.
fy : Str -> Attribute
fy = attribute "fy"

## Construct a `gradientTransform` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/gradienttransform) for more information.
gradienttransform : Str -> Attribute
gradienttransform = attribute "gradientTransform"

## Construct a `gradientUnits` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/gradientunits) for more information.
gradientunits : Str -> Attribute
gradientunits = attribute "gradientUnits"

## Construct a `height` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/height) for more information.
height : Str -> Attribute
height = attribute "height"

## Construct a `href` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/href) for more information.
href : Str -> Attribute
href = attribute "href"

## Construct a `id` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/id) for more information.
id : Str -> Attribute
id = attribute "id"

## Construct a `image-rendering` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/image-rendering) for more information.
imageRendering : Str -> Attribute
imageRendering = attribute "image-rendering"

## Construct a `in` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/in) for more information.
in : Str -> Attribute
in = attribute "in"

## Construct a `in2` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/in2) for more information.
in2 : Str -> Attribute
in2 = attribute "in2"

## Construct a `intercept` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/intercept) for more information.
intercept : Str -> Attribute
intercept = attribute "intercept"

## Construct a `k1` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k1) for more information.
k1 : Str -> Attribute
k1 = attribute "k1"

## Construct a `k2` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k2) for more information.
k2 : Str -> Attribute
k2 = attribute "k2"

## Construct a `k3` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k3) for more information.
k3 : Str -> Attribute
k3 = attribute "k3"

## Construct a `k4` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/k4) for more information.
k4 : Str -> Attribute
k4 = attribute "k4"

## Construct a `kernelMatrix` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/kernelmatrix) for more information.
kernelmatrix : Str -> Attribute
kernelmatrix = attribute "kernelMatrix"

## Construct a `kernelUnitLength` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/kernelunitlength) for more information.
kernelunitlength : Str -> Attribute
kernelunitlength = attribute "kernelUnitLength"

## Construct a `keyPoints` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/keypoints) for more information.
keypoints : Str -> Attribute
keypoints = attribute "keyPoints"

## Construct a `keySplines` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/keysplines) for more information.
keysplines : Str -> Attribute
keysplines = attribute "keySplines"

## Construct a `keyTimes` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/keytimes) for more information.
keytimes : Str -> Attribute
keytimes = attribute "keyTimes"

## Construct a `lang` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lang) for more information.
lang : Str -> Attribute
lang = attribute "lang"

## Construct a `lengthAdjust` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lengthadjust) for more information.
lengthadjust : Str -> Attribute
lengthadjust = attribute "lengthAdjust"

## Construct a `letter-spacing` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/letter-spacing) for more information.
letterSpacing : Str -> Attribute
letterSpacing = attribute "letter-spacing"

## Construct a `lighting-color` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lighting-color) for more information.
lightingColor : Str -> Attribute
lightingColor = attribute "lighting-color"

## Construct a `limitingConeAngle` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/limitingconeangle) for more information.
limitingconeangle : Str -> Attribute
limitingconeangle = attribute "limitingConeAngle"

## Construct a `marker-end` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/marker-end) for more information.
markerEnd : Str -> Attribute
markerEnd = attribute "marker-end"

## Construct a `marker-mid` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/marker-mid) for more information.
markerMid : Str -> Attribute
markerMid = attribute "marker-mid"

## Construct a `marker-start` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/marker-start) for more information.
markerStart : Str -> Attribute
markerStart = attribute "marker-start"

## Construct a `markerHeight` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/markerheight) for more information.
markerheight : Str -> Attribute
markerheight = attribute "markerHeight"

## Construct a `markerUnits` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/markerunits) for more information.
markerunits : Str -> Attribute
markerunits = attribute "markerUnits"

## Construct a `markerWidth` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/markerwidth) for more information.
markerwidth : Str -> Attribute
markerwidth = attribute "markerWidth"

## Construct a `mask` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/mask) for more information.
mask : Str -> Attribute
mask = attribute "mask"

## Construct a `maskContentUnits` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/maskcontentunits) for more information.
maskcontentunits : Str -> Attribute
maskcontentunits = attribute "maskContentUnits"

## Construct a `maskUnits` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/maskunits) for more information.
maskunits : Str -> Attribute
maskunits = attribute "maskUnits"

## Construct a `max` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/max) for more information.
max : Str -> Attribute
max = attribute "max"

## Construct a `media` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/media) for more information.
media : Str -> Attribute
media = attribute "media"

## Construct a `method` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/method) for more information.
method : Str -> Attribute
method = attribute "method"

## Construct a `min` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/min) for more information.
min : Str -> Attribute
min = attribute "min"

## Construct a `mode` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/mode) for more information.
mode : Str -> Attribute
mode = attribute "mode"

## Construct a `numOctaves` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/numoctaves) for more information.
numoctaves : Str -> Attribute
numoctaves = attribute "numOctaves"

## Construct a `onclick` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onclick) for more information.
onclick : Str -> Attribute
onclick = attribute "onclick"

## Construct a `opacity` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/opacity) for more information.
opacity : Str -> Attribute
opacity = attribute "opacity"

## Construct a `operator` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/operator) for more information.
operator : Str -> Attribute
operator = attribute "operator"

## Construct a `order` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/order) for more information.
order : Str -> Attribute
order = attribute "order"

## Construct a `orient` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/orient) for more information.
orient : Str -> Attribute
orient = attribute "orient"

## Construct a `origin` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/origin) for more information.
origin : Str -> Attribute
origin = attribute "origin"

## Construct a `overflow` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/overflow) for more information.
overflow : Str -> Attribute
overflow = attribute "overflow"

## Construct a `overline-position` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/overline-position) for more information.
overlinePosition : Str -> Attribute
overlinePosition = attribute "overline-position"

## Construct a `overline-thickness` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/overline-thickness) for more information.
overlineThickness : Str -> Attribute
overlineThickness = attribute "overline-thickness"

## Construct a `paint-order` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/paint-order) for more information.
paintOrder : Str -> Attribute
paintOrder = attribute "paint-order"

## Construct a `path` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/path) for more information.
path : Str -> Attribute
path = attribute "path"

## Construct a `pathLength` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pathlength) for more information.
pathlength : Str -> Attribute
pathlength = attribute "pathLength"

## Construct a `patternContentUnits` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/patterncontentunits) for more information.
patterncontentunits : Str -> Attribute
patterncontentunits = attribute "patternContentUnits"

## Construct a `patternTransform` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/patterntransform) for more information.
patterntransform : Str -> Attribute
patterntransform = attribute "patternTransform"

## Construct a `patternUnits` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/patternunits) for more information.
patternunits : Str -> Attribute
patternunits = attribute "patternUnits"

## Construct a `pointer-events` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointer-events) for more information.
pointerEvents : Str -> Attribute
pointerEvents = attribute "pointer-events"

## Construct a `points` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/points) for more information.
points : Str -> Attribute
points = attribute "points"

## Construct a `pointsAtX` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointsatx) for more information.
pointsatx : Str -> Attribute
pointsatx = attribute "pointsAtX"

## Construct a `pointsAtY` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointsaty) for more information.
pointsaty : Str -> Attribute
pointsaty = attribute "pointsAtY"

## Construct a `pointsAtZ` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointsatz) for more information.
pointsatz : Str -> Attribute
pointsatz = attribute "pointsAtZ"

## Construct a `preserveAlpha` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/preservealpha) for more information.
preservealpha : Str -> Attribute
preservealpha = attribute "preserveAlpha"

## Construct a `preserveAspectRatio` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/preserveaspectratio) for more information.
preserveaspectratio : Str -> Attribute
preserveaspectratio = attribute "preserveAspectRatio"

## Construct a `primitiveUnits` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/primitiveunits) for more information.
primitiveunits : Str -> Attribute
primitiveunits = attribute "primitiveUnits"

## Construct a `r` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/r) for more information.
r : Str -> Attribute
r = attribute "r"

## Construct a `radius` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/radius) for more information.
radius : Str -> Attribute
radius = attribute "radius"

## Construct a `refX` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/refx) for more information.
refx : Str -> Attribute
refx = attribute "refX"

## Construct a `refY` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/refy) for more information.
refy : Str -> Attribute
refy = attribute "refY"

## Construct a `repeatCount` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/repeatcount) for more information.
repeatcount : Str -> Attribute
repeatcount = attribute "repeatCount"

## Construct a `repeatDur` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/repeatdur) for more information.
repeatdur : Str -> Attribute
repeatdur = attribute "repeatDur"

## Construct a `restart` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/restart) for more information.
restart : Str -> Attribute
restart = attribute "restart"

## Construct a `result` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/result) for more information.
result : Str -> Attribute
result = attribute "result"

## Construct a `rotate` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/rotate) for more information.
rotate : Str -> Attribute
rotate = attribute "rotate"

## Construct a `rx` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/rx) for more information.
rx : Str -> Attribute
rx = attribute "rx"

## Construct a `ry` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ry) for more information.
ry : Str -> Attribute
ry = attribute "ry"

## Construct a `scale` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/scale) for more information.
scale : Str -> Attribute
scale = attribute "scale"

## Construct a `seed` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/seed) for more information.
seed : Str -> Attribute
seed = attribute "seed"

## Construct a `shape-rendering` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/shape-rendering) for more information.
shapeRendering : Str -> Attribute
shapeRendering = attribute "shape-rendering"

## Construct a `side` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/side) for more information.
side : Str -> Attribute
side = attribute "side"

## Construct a `spacing` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/spacing) for more information.
spacing : Str -> Attribute
spacing = attribute "spacing"

## Construct a `specularConstant` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/specularconstant) for more information.
specularconstant : Str -> Attribute
specularconstant = attribute "specularConstant"

## Construct a `specularExponent` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/specularexponent) for more information.
specularexponent : Str -> Attribute
specularexponent = attribute "specularExponent"

## Construct a `spreadMethod` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/spreadmethod) for more information.
spreadmethod : Str -> Attribute
spreadmethod = attribute "spreadMethod"

## Construct a `startOffset` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/startoffset) for more information.
startoffset : Str -> Attribute
startoffset = attribute "startOffset"

## Construct a `stdDeviation` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stddeviation) for more information.
stddeviation : Str -> Attribute
stddeviation = attribute "stdDeviation"

## Construct a `stitchTiles` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stitchtiles) for more information.
stitchtiles : Str -> Attribute
stitchtiles = attribute "stitchTiles"

## Construct a `stop-color` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stop-color) for more information.
stopColor : Str -> Attribute
stopColor = attribute "stop-color"

## Construct a `stop-opacity` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stop-opacity) for more information.
stopOpacity : Str -> Attribute
stopOpacity = attribute "stop-opacity"

## Construct a `strikethrough-position` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/strikethrough-position) for more information.
strikethroughPosition : Str -> Attribute
strikethroughPosition = attribute "strikethrough-position"

## Construct a `strikethrough-thickness` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/strikethrough-thickness) for more information.
strikethroughThickness : Str -> Attribute
strikethroughThickness = attribute "strikethrough-thickness"

## Construct a `stroke` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke) for more information.
stroke : Str -> Attribute
stroke = attribute "stroke"

## Construct a `stroke-dasharray` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-dasharray) for more information.
strokeDasharray : Str -> Attribute
strokeDasharray = attribute "stroke-dasharray"

## Construct a `stroke-dashoffset` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-dashoffset) for more information.
strokeDashoffset : Str -> Attribute
strokeDashoffset = attribute "stroke-dashoffset"

## Construct a `stroke-linecap` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-linecap) for more information.
strokeLinecap : Str -> Attribute
strokeLinecap = attribute "stroke-linecap"

## Construct a `stroke-linejoin` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-linejoin) for more information.
strokeLinejoin : Str -> Attribute
strokeLinejoin = attribute "stroke-linejoin"

## Construct a `stroke-miterlimit` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-miterlimit) for more information.
strokeMiterlimit : Str -> Attribute
strokeMiterlimit = attribute "stroke-miterlimit"

## Construct a `stroke-opacity` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-opacity) for more information.
strokeOpacity : Str -> Attribute
strokeOpacity = attribute "stroke-opacity"

## Construct a `stroke-width` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-width) for more information.
strokeWidth : Str -> Attribute
strokeWidth = attribute "stroke-width"

## Construct a `style` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/style) for more information.
style : Str -> Attribute
style = attribute "style"

## Construct a `surfaceScale` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/surfacescale) for more information.
surfacescale : Str -> Attribute
surfacescale = attribute "surfaceScale"

## Construct a `systemLanguage` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/systemlanguage) for more information.
systemlanguage : Str -> Attribute
systemlanguage = attribute "systemLanguage"

## Construct a `tabindex` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/tabindex) for more information.
tabindex : Str -> Attribute
tabindex = attribute "tabindex"

## Construct a `tableValues` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/tablevalues) for more information.
tablevalues : Str -> Attribute
tablevalues = attribute "tableValues"

## Construct a `target` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/target) for more information.
target : Str -> Attribute
target = attribute "target"

## Construct a `targetX` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/targetx) for more information.
targetx : Str -> Attribute
targetx = attribute "targetX"

## Construct a `targetY` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/targety) for more information.
targety : Str -> Attribute
targety = attribute "targetY"

## Construct a `text-anchor` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/text-anchor) for more information.
textAnchor : Str -> Attribute
textAnchor = attribute "text-anchor"

## Construct a `text-decoration` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/text-decoration) for more information.
textDecoration : Str -> Attribute
textDecoration = attribute "text-decoration"

## Construct a `text-rendering` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/text-rendering) for more information.
textRendering : Str -> Attribute
textRendering = attribute "text-rendering"

## Construct a `textLength` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/textlength) for more information.
textlength : Str -> Attribute
textlength = attribute "textLength"

## Construct a `to` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/to) for more information.
to : Str -> Attribute
to = attribute "to"

## Construct a `transform` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/transform) for more information.
transform : Str -> Attribute
transform = attribute "transform"

## Construct a `transform-origin` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/transform-origin) for more information.
transformOrigin : Str -> Attribute
transformOrigin = attribute "transform-origin"

## Construct a `type` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/type) for more information.
type : Str -> Attribute
type = attribute "type"

## Construct a `underline-position` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/underline-position) for more information.
underlinePosition : Str -> Attribute
underlinePosition = attribute "underline-position"

## Construct a `underline-thickness` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/underline-thickness) for more information.
underlineThickness : Str -> Attribute
underlineThickness = attribute "underline-thickness"

## Construct a `unicode-bidi` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/unicode-bidi) for more information.
unicodeBidi : Str -> Attribute
unicodeBidi = attribute "unicode-bidi"

## Construct a `values` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/values) for more information.
values : Str -> Attribute
values = attribute "values"

## Construct a `vector-effect` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/vector-effect) for more information.
vectorEffect : Str -> Attribute
vectorEffect = attribute "vector-effect"

## Construct a `viewBox` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/viewbox) for more information.
viewbox : Str -> Attribute
viewbox = attribute "viewBox"

## Construct a `visibility` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/visibility) for more information.
visibility : Str -> Attribute
visibility = attribute "visibility"

## Construct a `width` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/width) for more information.
width : Str -> Attribute
width = attribute "width"

## Construct a `word-spacing` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/word-spacing) for more information.
wordSpacing : Str -> Attribute
wordSpacing = attribute "word-spacing"

## Construct a `writing-mode` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/writing-mode) for more information.
writingMode : Str -> Attribute
writingMode = attribute "writing-mode"

## Construct a `x` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x) for more information.
x : Str -> Attribute
x = attribute "x"

## Construct a `x1` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x1) for more information.
x1 : Str -> Attribute
x1 = attribute "x1"

## Construct a `x2` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x2) for more information.
x2 : Str -> Attribute
x2 = attribute "x2"

## Construct a `xChannelSelector` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xchannelselector) for more information.
xchannelselector : Str -> Attribute
xchannelselector = attribute "xChannelSelector"

## Construct a `y` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y) for more information.
y : Str -> Attribute
y = attribute "y"

## Construct a `y1` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y1) for more information.
y1 : Str -> Attribute
y1 = attribute "y1"

## Construct a `y2` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y2) for more information.
y2 : Str -> Attribute
y2 = attribute "y2"

## Construct a `yChannelSelector` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ychannelselector) for more information.
ychannelselector : Str -> Attribute
ychannelselector = attribute "yChannelSelector"

## Construct a `z` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/z) for more information.
z : Str -> Attribute
z = attribute "z"
