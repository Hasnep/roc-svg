app "svg-example"
    packages {
        pf: "https://github.com/roc-lang/basic-cli/releases/download/0.3.2/tE4xS_zLdmmxmHwHih9kHWQ7fsXtJr7W7h3425-eZFk.tar.br",
        svg: "../src/main.roc",
    }
    imports [pf.Stdout, svg.Svg, svg.Attribute]
    provides [main] to pf

main =
    Svg.svg
        [
            Attribute.width "240",
            Attribute.height "240",
            Attribute.viewBox "0 0 51 53",
            Attribute.fill "none",
            Attribute.xmlns "http://www.w3.org/2000/svg",
            Attribute.xmlnsXlink "http://www.w3.org/1999/xlink",
        ]
        [
            Svg.path [Attribute.d "M23.6751 22.7086L17.655 53L27.4527 45.2132L26.4673 39.3424L23.6751 22.7086Z", Attribute.fill "#612BDE"] [],
            Svg.path [Attribute.d "M37.2438 19.0101L44.0315 26.3689L45 22L45.9665 16.6324L37.2438 19.0101Z", Attribute.fill "#8257E5"] [],
            Svg.path [Attribute.d "M23.8834 3.21052L0 0L23.6751 22.7086L23.8834 3.21052Z", Attribute.fill "#8257E5"] [],
            Svg.path [Attribute.d "M44.0315 26.3689L23.6751 22.7086L26.4673 39.3424L44.0315 26.3689Z", Attribute.fill "#8257E5"] [],
            Svg.path [Attribute.d "M50.5 22L45.9665 16.6324L45 22H50.5Z", Attribute.fill "#612BDE"] [],
            Svg.path [Attribute.d "M23.6751 22.7086L44.0315 26.3689L37.2438 19.0101L23.8834 3.21052L23.6751 22.7086Z", Attribute.fill "#612BDE"] [],
        ]
    |> Svg.render
    |> Stdout.line
