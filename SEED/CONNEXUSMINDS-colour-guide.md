# ConnexusMinds Color Style Guide

## Primary Palette

### Core Colors
- **Deep Teal**: `#0F766E` (RGB: 15, 118, 110)  
  *Primary brand color - trust, intelligence, systematic thinking*

- **Network Navy**: `#1E3A8A` (RGB: 30, 58, 138)  
  *Secondary color - authority, analytical precision*

- **Intelligence Sage**: `#166534` (RGB: 22, 101, 52)  
  *Tertiary accent - growth, organic development*

### Supporting Colors
- **Insight Amber**: `#D97706` (RGB: 217, 119, 6) - Breakthroughs, CTAs
- **Wisdom Grey**: `#475569` (RGB: 71, 85, 105) - Body text, neutral elements
- **Pure White**: `#FFFFFF` - Backgrounds, negative space

## Usage Rules

### Primary Applications
- **Logo**: Deep Teal + Network Navy (no more than 2 colors in symbol)
- **Typography**: Network Navy (headlines), Wisdom Grey (body text)
- **Digital UI**: 60% White, 30% Primary colors, 10% Accent colors

### Color Combinations
✅ **Approved**
- Deep Teal + Network Navy
- Network Navy + Insight Amber
- Intelligence Sage + Deep Teal

❌ **Avoid**
- All three primary colors together
- More than one accent color per layout
- Low contrast combinations

## Gradients

### Primary Gradient
- **Intelligence Flow**: Deep Teal → Network Navy (135° angle)
- **Usage**: Hero sections, primary buttons, feature highlights

### Secondary Gradient  
- **Growth Path**: Intelligence Sage → Deep Teal (45° angle)
- **Usage**: Progress indicators, secondary elements

## Accessibility Standards

### Contrast Ratios
- Text on White: All colors pass WCAG AA (4.5:1 minimum)
- White on Colors: Use only with Deep Teal, Network Navy, Intelligence Sage
- Never place Insight Amber text on white backgrounds

### Color Blind Considerations
- Primary palette remains distinguishable in all color blind modes
- Use patterns or icons alongside color for critical information

## Digital Specifications

### Web/Screen
- Color Space: sRGB
- CSS Variables:
  ```css
  --cm-teal: #0F766E;
  --cm-navy: #1E3A8A;
  --cm-sage: #166534;
  --cm-amber: #D97706;
  --cm-grey: #475569;
  ```

### Print
- Deep Teal: C:85 M:30 Y:60 K:25
- Network Navy: C:100 M:80 Y:20 K:15
- Intelligence Sage: C:80 M:25 Y:100 K:20

## Application Priority

1. **Monochrome First**: Design in Deep Teal + greys before adding color
2. **Two-Color Maximum**: Logo applications use maximum 2 colors
3. **White Space**: Minimum 60% white space in all layouts
4. **Accent Sparingly**: Insight Amber only for critical actions/highlights