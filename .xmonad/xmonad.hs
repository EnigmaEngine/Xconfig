import XMonad
import XMonad.Hooks.DynamicLog

main = xmonad =<< xmobar defaultConfig
    { terminal   = "urxvt"
    , modMask    = mod1Mask
    , manageHook = manageDocks <+> manageHook defaultConfig
    , layoutHook = avoidStruts $ layoutHook defaultConfig
    , handleEventHook = mconcat [ docksEventHook, handleEventHook defaultConfig ]
    }
