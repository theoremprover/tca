module Main where

import Paths

import qualified Graphics.UI.Threepenny as UI
import Graphics.UI.Threepenny.Core

{-----------------------------------------------------------------------------
    Buttons
------------------------------------------------------------------------------}

main :: IO ()
main = do
    static <- getStaticDir
    startGUI defaultConfig {
        jsStatic = Just "static",
        jsPort   = Just 8023 } $ \ w -> do
		    return w # set title "Test"
            return ()