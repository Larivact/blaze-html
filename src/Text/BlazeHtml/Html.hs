module Text.BlazeHtml.Html
    ( module Text.BlazeHtml.Internal.Html
    ) where

import Text.BlazeHtml.Internal.Html hiding (modifyUnescapedAttributes)

-- | The basic combinators for nesting HTMl and setting attributes are
(<!) :: Html h => (h -> h) -> Attributes -> h -> h
(<!) e attrs inner = addUnescapedAttributes attrs $ e inner
 
-- | Set the inner html to a list of inner html elements
(</) :: Html h => (h -> h) -> [h] -> h
(</) e inner = e $ mconcat inner