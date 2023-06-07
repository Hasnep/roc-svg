# Roc SVG

A library to create SVGs in Roc.

## Example

This Roc code:

```roc
myCircle = Svg.circle [Attribute.cx "50", Attribute.cy "50", Attribute.r "50"] []
Svg.svg [Attribute.width "100", Attribute.height "100"] [myCircle] |> Svg.render
```

Returns this SVG:

```svg
<svg width="100" height="100"><circle cx="50" cy="50" r="50"></circle></svg>
```

## Licence

This repository is released under the [UPL licence](./LICENCE).
