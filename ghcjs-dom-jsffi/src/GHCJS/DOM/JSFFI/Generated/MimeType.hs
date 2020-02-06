{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MimeType
       (js_getType, getType, js_getSuffixes, getSuffixes,
        js_getDescription, getDescription, js_getEnabledPlugin,
        getEnabledPlugin, MimeType(..), gTypeMimeType)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        MimeType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.type Mozilla MimeType.type documentation> 
getType :: (MonadIO m, FromJSString result) => MimeType -> m result
getType self = liftIO (fromJSString <$> (js_getType self))
 
foreign import javascript unsafe "$1[\"suffixes\"]" js_getSuffixes
        :: MimeType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.suffixes Mozilla MimeType.suffixes documentation> 
getSuffixes ::
            (MonadIO m, FromJSString result) => MimeType -> m result
getSuffixes self = liftIO (fromJSString <$> (js_getSuffixes self))
 
foreign import javascript unsafe "$1[\"description\"]"
        js_getDescription :: MimeType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.description Mozilla MimeType.description documentation> 
getDescription ::
               (MonadIO m, FromJSString result) => MimeType -> m result
getDescription self
  = liftIO (fromJSString <$> (js_getDescription self))
 
foreign import javascript unsafe "$1[\"enabledPlugin\"]"
        js_getEnabledPlugin :: MimeType -> IO Plugin

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.enabledPlugin Mozilla MimeType.enabledPlugin documentation> 
getEnabledPlugin :: (MonadIO m) => MimeType -> m Plugin
getEnabledPlugin self = liftIO (js_getEnabledPlugin self)