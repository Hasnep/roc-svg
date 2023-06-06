interface Attribute
    exposes [
        Attribute,
        attribute,
        # Generic attributes - Core attributes
        id,
        lang,
        tabindex,
        xmlBase,
        xmlLang,
        xmlSpace,
        # Generic attributes - Style attributes
        class,
        style,
        # Generic attributes - Conditional processing attributes
        requiredextensions,
        requiredfeatures,
        systemlanguage,
        # Generic attributes - XLink attributes
        xlinkHref,
        xlinkType,
        xlinkRole,
        xlinkArcrole,
        xlinkTitle,
        xlinkShow,
        xlinkActuate,
        # Generic attributes - Presentation attributes
        alignmentBaseline,
        baselineShift,
        clip,
        clipPath,
        clipRule,
        color,
        colorInterpolation,
        colorInterpolationFilters,
        colorProfile,
        colorRendering,
        cursor,
        direction,
        display,
        dominantBaseline,
        enableBackground,
        fill,
        fillOpacity,
        fillRule,
        filter,
        floodColor,
        floodOpacity,
        fontFamily,
        fontSize,
        fontSizeAdjust,
        fontStretch,
        fontStyle,
        fontVariant,
        fontWeight,
        glyphOrientationHorizontal,
        glyphOrientationVertical,
        imageRendering,
        kerning,
        letterSpacing,
        lightingColor,
        markerEnd,
        markerMid,
        markerStart,
        mask,
        opacity,
        overflow,
        pointerEvents,
        shapeRendering,
        stopColor,
        stopOpacity,
        stroke,
        strokeDasharray,
        strokeDashoffset,
        strokeLinecap,
        strokeLinejoin,
        strokeMiterlimit,
        strokeOpacity,
        strokeWidth,
        textAnchor,
        textDecoration,
        textRendering,
        transform,
        transformOrigin,
        unicodeBidi,
        vectorEffect,
        visibility,
        wordSpacing,
        writingMode,
        # Filters attributes - Filter primitive attributes
        height,
        result,
        width,
        x,
        y,
        # Filters attributes - Transfer function attributes
        type,
        tablevalues,
        slope,
        intercept,
        amplitude,
        exponent,
        offset,
        # Animation attributes - Animation target element attributes
        href,
        # Animation attributes - Animation attribute target attributes
        attributetype,
        attributename,
        # Animation attributes - Animation timing attributes
        begin,
        dur,
        end,
        min,
        max,
        restart,
        repeatcount,
        repeatdur,
        # Animation attributes - Animation value attributes
        calcmode,
        values,
        keytimes,
        keysplines,
        from,
        to,
        by,
        autoreverse,
        accelerate,
        decelerate,
        # Animation attributes - Animation addition attributes
        additive,
        accumulate,
        # Event attributes - Animation event attributes
        onbegin,
        onend,
        onrepeat,
        # Event attributes - Document event attributes
        onabort,
        onerror,
        onresize,
        onscroll,
        onunload,
        # Event attributes - Global event attributes
        oncancel,
        oncanplay,
        oncanplaythrough,
        onchange,
        onclick,
        onclose,
        oncuechange,
        ondblclick,
        ondrag,
        ondragend,
        ondragenter,
        ondragleave,
        ondragover,
        ondragstart,
        ondrop,
        ondurationchange,
        onemptied,
        onended,
        onfocus,
        oninput,
        oninvalid,
        onkeydown,
        onkeypress,
        onkeyup,
        onload,
        onloadeddata,
        onloadedmetadata,
        onloadstart,
        onmousedown,
        onmouseenter,
        onmouseleave,
        onmousemove,
        onmouseout,
        onmouseover,
        onmouseup,
        onmousewheel,
        onpause,
        onplay,
        onplaying,
        onprogress,
        onratechange,
        onreset,
        onseeked,
        onseeking,
        onselect,
        onshow,
        onstalled,
        onsubmit,
        onsuspend,
        ontimeupdate,
        ontoggle,
        onvolumechange,
        onwaiting,
        # Event attributes - Graphical event attributes
        onactivate,
        onfocusin,
        onfocusout,

    ]
    imports []

Attribute : [Attribute Str Str]

## Define a non-standard attribute.
## You can use this to add attributes that are not already supported.
attribute : Str -> (Str -> Attribute)
attribute = \attributeName ->
    \attributeValue -> Attribute attributeName attributeValue

# Generic attributes - Core attributes

## Construct a `id` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/id) for more information.
id : Str -> Attribute
id = attribute "id"

## Construct a `lang` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/lang) for more information.
lang : Str -> Attribute
lang = attribute "lang"

## Construct a `tabindex` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/tabindex) for more information.
tabindex : Str -> Attribute
tabindex = attribute "tabindex"

## Construct a `xml:base` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xml:base) for more information.
xmlBase : Str -> Attribute
xmlBase = attribute "xml:base"

## Construct a `xml:lang` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xml:lang) for more information.
xmlLang : Str -> Attribute
xmlLang = attribute "xml:lang"

## Construct a `xml:space` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xml:space) for more information.
xmlSpace : Str -> Attribute
xmlSpace = attribute "xml:space"

# Generic attributes - Style attributes

## Construct a `class` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/class) for more information.
class : Str -> Attribute
class = attribute "class"

## Construct a `style` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/style) for more information.
style : Str -> Attribute
style = attribute "style"

# Generic attributes - Conditional processing attributes

## Construct a `requiredExtensions` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/requiredExtensions) for more information.
requiredextensions : Str -> Attribute
requiredextensions = attribute "requiredExtensions"

## Construct a `requiredFeatures` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/requiredFeatures) for more information.
requiredfeatures : Str -> Attribute
requiredfeatures = attribute "requiredFeatures"

## Construct a `systemLanguage` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/systemLanguage) for more information.
systemlanguage : Str -> Attribute
systemlanguage = attribute "systemLanguage"

# Generic attributes - XLink attributes

## Construct a `xlink:href` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xlink:href) for more information.
xlinkHref : Str -> Attribute
xlinkHref = attribute "xlink:href"

## Construct a `xlink:type` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xlink:type) for more information.
xlinkType : Str -> Attribute
xlinkType = attribute "xlink:type"

## Construct a `xlink:role` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xlink:role) for more information.
xlinkRole : Str -> Attribute
xlinkRole = attribute "xlink:role"

## Construct a `xlink:arcrole` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xlink:arcrole) for more information.
xlinkArcrole : Str -> Attribute
xlinkArcrole = attribute "xlink:arcrole"

## Construct a `xlink:title` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xlink:title) for more information.
xlinkTitle : Str -> Attribute
xlinkTitle = attribute "xlink:title"

## Construct a `xlink:show` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xlink:show) for more information.
xlinkShow : Str -> Attribute
xlinkShow = attribute "xlink:show"

## Construct a `xlink:actuate` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/xlink:actuate) for more information.
xlinkActuate : Str -> Attribute
xlinkActuate = attribute "xlink:actuate"

# Generic attributes - Presentation attributes

## Construct a `alignment-baseline` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/alignment-baseline) for more information.
alignmentBaseline : Str -> Attribute
alignmentBaseline = attribute "alignment-baseline"

## Construct a `baseline-shift` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/baseline-shift) for more information.
baselineShift : Str -> Attribute
baselineShift = attribute "baseline-shift"

## Construct a `clip` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/clip) for more information.
clip : Str -> Attribute
clip = attribute "clip"

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

## Construct a `color-profile` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/color-profile) for more information.
colorProfile : Str -> Attribute
colorProfile = attribute "color-profile"

## Construct a `color-rendering` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/color-rendering) for more information.
colorRendering : Str -> Attribute
colorRendering = attribute "color-rendering"

## Construct a `cursor` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/cursor) for more information.
cursor : Str -> Attribute
cursor = attribute "cursor"

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

## Construct a `dominant-baseline` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dominant-baseline) for more information.
dominantBaseline : Str -> Attribute
dominantBaseline = attribute "dominant-baseline"

## Construct a `enable-background` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/enable-background) for more information.
enableBackground : Str -> Attribute
enableBackground = attribute "enable-background"

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

## Construct a `glyph-orientation-horizontal` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/glyph-orientation-horizontal) for more information.
glyphOrientationHorizontal : Str -> Attribute
glyphOrientationHorizontal = attribute "glyph-orientation-horizontal"

## Construct a `glyph-orientation-vertical` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/glyph-orientation-vertical) for more information.
glyphOrientationVertical : Str -> Attribute
glyphOrientationVertical = attribute "glyph-orientation-vertical"

## Construct a `image-rendering` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/image-rendering) for more information.
imageRendering : Str -> Attribute
imageRendering = attribute "image-rendering"

## Construct a `kerning` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/kerning) for more information.
kerning : Str -> Attribute
kerning = attribute "kerning"

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

## Construct a `mask` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/mask) for more information.
mask : Str -> Attribute
mask = attribute "mask"

## Construct a `opacity` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/opacity) for more information.
opacity : Str -> Attribute
opacity = attribute "opacity"

## Construct a `overflow` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/overflow) for more information.
overflow : Str -> Attribute
overflow = attribute "overflow"

## Construct a `pointer-events` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/pointer-events) for more information.
pointerEvents : Str -> Attribute
pointerEvents = attribute "pointer-events"

## Construct a `shape-rendering` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/shape-rendering) for more information.
shapeRendering : Str -> Attribute
shapeRendering = attribute "shape-rendering"

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

## Construct a `unicode-bidi` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/unicode-bidi) for more information.
unicodeBidi : Str -> Attribute
unicodeBidi = attribute "unicode-bidi"

## Construct a `vector-effect` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/vector-effect) for more information.
vectorEffect : Str -> Attribute
vectorEffect = attribute "vector-effect"

## Construct a `visibility` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/visibility) for more information.
visibility : Str -> Attribute
visibility = attribute "visibility"

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

# Filters attributes - Filter primitive attributes

## Construct a `height` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/height) for more information.
height : Str -> Attribute
height = attribute "height"

## Construct a `result` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/result) for more information.
result : Str -> Attribute
result = attribute "result"

## Construct a `width` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/width) for more information.
width : Str -> Attribute
width = attribute "width"

## Construct a `x` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/x) for more information.
x : Str -> Attribute
x = attribute "x"

## Construct a `y` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/y) for more information.
y : Str -> Attribute
y = attribute "y"

# Filters attributes - Transfer function attributes

## Construct a `type` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/type) for more information.
type : Str -> Attribute
type = attribute "type"

## Construct a `tableValues` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/tableValues) for more information.
tablevalues : Str -> Attribute
tablevalues = attribute "tableValues"

## Construct a `slope` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/slope) for more information.
slope : Str -> Attribute
slope = attribute "slope"

## Construct a `intercept` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/intercept) for more information.
intercept : Str -> Attribute
intercept = attribute "intercept"

## Construct a `amplitude` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/amplitude) for more information.
amplitude : Str -> Attribute
amplitude = attribute "amplitude"

## Construct a `exponent` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/exponent) for more information.
exponent : Str -> Attribute
exponent = attribute "exponent"

## Construct a `offset` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/offset) for more information.
offset : Str -> Attribute
offset = attribute "offset"

# Animation attributes - Animation target element attributes

## Construct a `href` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/href) for more information.
href : Str -> Attribute
href = attribute "href"

# Animation attributes - Animation attribute target attributes

## Construct a `attributeType` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/attributeType) for more information.
attributetype : Str -> Attribute
attributetype = attribute "attributeType"

## Construct a `attributeName` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/attributeName) for more information.
attributename : Str -> Attribute
attributename = attribute "attributeName"

# Animation attributes - Animation timing attributes

## Construct a `begin` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/begin) for more information.
begin : Str -> Attribute
begin = attribute "begin"

## Construct a `dur` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/dur) for more information.
dur : Str -> Attribute
dur = attribute "dur"

## Construct a `end` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/end) for more information.
end : Str -> Attribute
end = attribute "end"

## Construct a `min` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/min) for more information.
min : Str -> Attribute
min = attribute "min"

## Construct a `max` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/max) for more information.
max : Str -> Attribute
max = attribute "max"

## Construct a `restart` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/restart) for more information.
restart : Str -> Attribute
restart = attribute "restart"

## Construct a `repeatCount` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/repeatCount) for more information.
repeatcount : Str -> Attribute
repeatcount = attribute "repeatCount"

## Construct a `repeatDur` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/repeatDur) for more information.
repeatdur : Str -> Attribute
repeatdur = attribute "repeatDur"

# Animation attributes - Animation value attributes

## Construct a `calcMode` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/calcMode) for more information.
calcmode : Str -> Attribute
calcmode = attribute "calcMode"

## Construct a `values` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/values) for more information.
values : Str -> Attribute
values = attribute "values"

## Construct a `keyTimes` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/keyTimes) for more information.
keytimes : Str -> Attribute
keytimes = attribute "keyTimes"

## Construct a `keySplines` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/keySplines) for more information.
keysplines : Str -> Attribute
keysplines = attribute "keySplines"

## Construct a `from` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/from) for more information.
from : Str -> Attribute
from = attribute "from"

## Construct a `to` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/to) for more information.
to : Str -> Attribute
to = attribute "to"

## Construct a `by` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/by) for more information.
by : Str -> Attribute
by = attribute "by"

## Construct a `autoReverse` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/autoReverse) for more information.
autoreverse : Str -> Attribute
autoreverse = attribute "autoReverse"

## Construct a `accelerate` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/accelerate) for more information.
accelerate : Str -> Attribute
accelerate = attribute "accelerate"

## Construct a `decelerate` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/decelerate) for more information.
decelerate : Str -> Attribute
decelerate = attribute "decelerate"

# Animation attributes - Animation addition attributes

## Construct a `additive` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/additive) for more information.
additive : Str -> Attribute
additive = attribute "additive"

## Construct a `accumulate` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/accumulate) for more information.
accumulate : Str -> Attribute
accumulate = attribute "accumulate"

# Event attributes - Animation event attributes

## Construct a `onbegin` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onbegin) for more information.
onbegin : Str -> Attribute
onbegin = attribute "onbegin"

## Construct a `onend` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onend) for more information.
onend : Str -> Attribute
onend = attribute "onend"

## Construct a `onrepeat` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onrepeat) for more information.
onrepeat : Str -> Attribute
onrepeat = attribute "onrepeat"

# Event attributes - Document event attributes

## Construct a `onabort` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onabort) for more information.
onabort : Str -> Attribute
onabort = attribute "onabort"

## Construct a `onerror` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onerror) for more information.
onerror : Str -> Attribute
onerror = attribute "onerror"

## Construct a `onresize` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onresize) for more information.
onresize : Str -> Attribute
onresize = attribute "onresize"

## Construct a `onscroll` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onscroll) for more information.
onscroll : Str -> Attribute
onscroll = attribute "onscroll"

## Construct a `onunload` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onunload) for more information.
onunload : Str -> Attribute
onunload = attribute "onunload"

# Event attributes - Global event attributes

## Construct a `oncancel` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/oncancel) for more information.
oncancel : Str -> Attribute
oncancel = attribute "oncancel"

## Construct a `oncanplay` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/oncanplay) for more information.
oncanplay : Str -> Attribute
oncanplay = attribute "oncanplay"

## Construct a `oncanplaythrough` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/oncanplaythrough) for more information.
oncanplaythrough : Str -> Attribute
oncanplaythrough = attribute "oncanplaythrough"

## Construct a `onchange` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onchange) for more information.
onchange : Str -> Attribute
onchange = attribute "onchange"

## Construct a `onclick` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onclick) for more information.
onclick : Str -> Attribute
onclick = attribute "onclick"

## Construct a `onclose` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onclose) for more information.
onclose : Str -> Attribute
onclose = attribute "onclose"

## Construct a `oncuechange` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/oncuechange) for more information.
oncuechange : Str -> Attribute
oncuechange = attribute "oncuechange"

## Construct a `ondblclick` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ondblclick) for more information.
ondblclick : Str -> Attribute
ondblclick = attribute "ondblclick"

## Construct a `ondrag` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ondrag) for more information.
ondrag : Str -> Attribute
ondrag = attribute "ondrag"

## Construct a `ondragend` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ondragend) for more information.
ondragend : Str -> Attribute
ondragend = attribute "ondragend"

## Construct a `ondragenter` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ondragenter) for more information.
ondragenter : Str -> Attribute
ondragenter = attribute "ondragenter"

## Construct a `ondragleave` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ondragleave) for more information.
ondragleave : Str -> Attribute
ondragleave = attribute "ondragleave"

## Construct a `ondragover` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ondragover) for more information.
ondragover : Str -> Attribute
ondragover = attribute "ondragover"

## Construct a `ondragstart` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ondragstart) for more information.
ondragstart : Str -> Attribute
ondragstart = attribute "ondragstart"

## Construct a `ondrop` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ondrop) for more information.
ondrop : Str -> Attribute
ondrop = attribute "ondrop"

## Construct a `ondurationchange` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ondurationchange) for more information.
ondurationchange : Str -> Attribute
ondurationchange = attribute "ondurationchange"

## Construct a `onemptied` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onemptied) for more information.
onemptied : Str -> Attribute
onemptied = attribute "onemptied"

## Construct a `onended` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onended) for more information.
onended : Str -> Attribute
onended = attribute "onended"

## Construct a `onfocus` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onfocus) for more information.
onfocus : Str -> Attribute
onfocus = attribute "onfocus"

## Construct a `oninput` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/oninput) for more information.
oninput : Str -> Attribute
oninput = attribute "oninput"

## Construct a `oninvalid` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/oninvalid) for more information.
oninvalid : Str -> Attribute
oninvalid = attribute "oninvalid"

## Construct a `onkeydown` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onkeydown) for more information.
onkeydown : Str -> Attribute
onkeydown = attribute "onkeydown"

## Construct a `onkeypress` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onkeypress) for more information.
onkeypress : Str -> Attribute
onkeypress = attribute "onkeypress"

## Construct a `onkeyup` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onkeyup) for more information.
onkeyup : Str -> Attribute
onkeyup = attribute "onkeyup"

## Construct a `onload` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onload) for more information.
onload : Str -> Attribute
onload = attribute "onload"

## Construct a `onloadeddata` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onloadeddata) for more information.
onloadeddata : Str -> Attribute
onloadeddata = attribute "onloadeddata"

## Construct a `onloadedmetadata` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onloadedmetadata) for more information.
onloadedmetadata : Str -> Attribute
onloadedmetadata = attribute "onloadedmetadata"

## Construct a `onloadstart` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onloadstart) for more information.
onloadstart : Str -> Attribute
onloadstart = attribute "onloadstart"

## Construct a `onmousedown` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onmousedown) for more information.
onmousedown : Str -> Attribute
onmousedown = attribute "onmousedown"

## Construct a `onmouseenter` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onmouseenter) for more information.
onmouseenter : Str -> Attribute
onmouseenter = attribute "onmouseenter"

## Construct a `onmouseleave` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onmouseleave) for more information.
onmouseleave : Str -> Attribute
onmouseleave = attribute "onmouseleave"

## Construct a `onmousemove` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onmousemove) for more information.
onmousemove : Str -> Attribute
onmousemove = attribute "onmousemove"

## Construct a `onmouseout` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onmouseout) for more information.
onmouseout : Str -> Attribute
onmouseout = attribute "onmouseout"

## Construct a `onmouseover` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onmouseover) for more information.
onmouseover : Str -> Attribute
onmouseover = attribute "onmouseover"

## Construct a `onmouseup` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onmouseup) for more information.
onmouseup : Str -> Attribute
onmouseup = attribute "onmouseup"

## Construct a `onmousewheel` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onmousewheel) for more information.
onmousewheel : Str -> Attribute
onmousewheel = attribute "onmousewheel"

## Construct a `onpause` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onpause) for more information.
onpause : Str -> Attribute
onpause = attribute "onpause"

## Construct a `onplay` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onplay) for more information.
onplay : Str -> Attribute
onplay = attribute "onplay"

## Construct a `onplaying` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onplaying) for more information.
onplaying : Str -> Attribute
onplaying = attribute "onplaying"

## Construct a `onprogress` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onprogress) for more information.
onprogress : Str -> Attribute
onprogress = attribute "onprogress"

## Construct a `onratechange` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onratechange) for more information.
onratechange : Str -> Attribute
onratechange = attribute "onratechange"

## Construct a `onreset` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onreset) for more information.
onreset : Str -> Attribute
onreset = attribute "onreset"

## Construct a `onseeked` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onseeked) for more information.
onseeked : Str -> Attribute
onseeked = attribute "onseeked"

## Construct a `onseeking` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onseeking) for more information.
onseeking : Str -> Attribute
onseeking = attribute "onseeking"

## Construct a `onselect` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onselect) for more information.
onselect : Str -> Attribute
onselect = attribute "onselect"

## Construct a `onshow` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onshow) for more information.
onshow : Str -> Attribute
onshow = attribute "onshow"

## Construct a `onstalled` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onstalled) for more information.
onstalled : Str -> Attribute
onstalled = attribute "onstalled"

## Construct a `onsubmit` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onsubmit) for more information.
onsubmit : Str -> Attribute
onsubmit = attribute "onsubmit"

## Construct a `onsuspend` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onsuspend) for more information.
onsuspend : Str -> Attribute
onsuspend = attribute "onsuspend"

## Construct a `ontimeupdate` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ontimeupdate) for more information.
ontimeupdate : Str -> Attribute
ontimeupdate = attribute "ontimeupdate"

## Construct a `ontoggle` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/ontoggle) for more information.
ontoggle : Str -> Attribute
ontoggle = attribute "ontoggle"

## Construct a `onvolumechange` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onvolumechange) for more information.
onvolumechange : Str -> Attribute
onvolumechange = attribute "onvolumechange"

## Construct a `onwaiting` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onwaiting) for more information.
onwaiting : Str -> Attribute
onwaiting = attribute "onwaiting"

# Event attributes - Graphical event attributes

## Construct a `onactivate` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onactivate) for more information.
onactivate : Str -> Attribute
onactivate = attribute "onactivate"

## Construct a `onfocusin` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onfocusin) for more information.
onfocusin : Str -> Attribute
onfocusin = attribute "onfocusin"

## Construct a `onfocusout` attribute.
##
## See the attribute's [MDN page](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/onfocusout) for more information.
onfocusout : Str -> Attribute
onfocusout = attribute "onfocusout"
