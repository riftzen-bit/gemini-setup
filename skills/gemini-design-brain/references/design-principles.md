# Gemini Design Principles

This reference documents the aesthetic and functional principles that define "Gemini-style" design. Use these guidelines to create modern, polished, and "alive" user interfaces.

## 1. Material Design 3 (M3) Foundation
Gemini's visual language is deeply rooted in M3. 

- **Dynamic Color:** Always prefer color schemes that feel harmonious. Use primary, secondary, and tertiary roles. Avoid high-contrast black/white unless for accessibility.
- **Elevation through Color:** Use tonal overlays instead of heavy drop shadows. Higher elevation = lighter surface color (in dark mode) or subtle tint (in light mode).
- **Shapes:** Use large corner radii (e.g., 24dp - 28dp for cards/dialogs) to create a friendly, organic feel.
- **Typography:** Use a clear hierarchy. Google Sans (or modern sans-serif equivalents like Inter) with varying weights.

## 2. Making it "Alive"
AI design often feels static. To fix this:
- **Micro-interactions:** Plan for hover states, ripple effects, and smooth transitions (easing: standard or emphasize).
- **Progressive Disclosure:** Don't show everything at once. Use "Skeleton screens" or graceful loading states.
- **Contextual Feedback:** Every action should have a visual response.

## 3. Human-Centric Content
Avoid "AI-speak" (e.g., "I have generated the following..."). 
- **Direct & Action-Oriented:** Use "Create Project" instead of "Click here to start the generation of your project".
- **Conversational but Professional:** Warm tone, but concise.

## 4. Visual Layout (The "Golden Ratio")
- **Generous Spacing:** Increase padding. Let components "breathe". 
- **Consistency:** Use an 8dp grid system for all dimensions.
- **Focal Points:** Use one primary action per screen. Minimize distractions.

## 5. Implementation Patterns (CSS/Tailwind)
- **Glassmorphism:** Subtle use of `backdrop-filter: blur()` for overlays.
- **Gradients:** Use soft, multi-stop gradients (e.g., 3 colors) rather than harsh 2-color linear gradients.
- **Shadows:** If used, use multi-layered soft shadows for realism.
