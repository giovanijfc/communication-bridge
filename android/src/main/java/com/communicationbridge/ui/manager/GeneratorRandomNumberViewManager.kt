package com.communicationbridge.ui.manager

import com.communicationbridge.ui.view.GeneratorRandomNumberView
import com.facebook.react.touch.JSResponderHandler
import com.facebook.react.uimanager.ReactStylesDiffMap
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.StateWrapper
import com.facebook.react.uimanager.ThemedReactContext

class GeneratorRandomNumberViewManager : SimpleViewManager<GeneratorRandomNumberView>() {

  override fun getName(): String {
    return "GeneratorRandomNumber"
  }

  override fun createViewInstance(reactContext: ThemedReactContext): GeneratorRandomNumberView {
    return GeneratorRandomNumberView(reactContext)
  }
}
