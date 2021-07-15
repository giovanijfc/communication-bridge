package com.communicationbridge.ui.view

import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.LinearLayout
import android.widget.TextView
import com.communicationbridge.R
import com.facebook.react.uimanager.ThemedReactContext

class GeneratorRandomNumberView : LinearLayout {

  var myContext: ThemedReactContext;
  var randomNumber: Int = 0;

  constructor(context: ThemedReactContext) : super(context) {
    this.myContext = context;
    init();
  }

  private fun updateRandomNumberLabel() {
    val randomNumberLabel: TextView = findViewById(R.id.txt_random_number)
    randomNumberLabel.text = "" + this.randomNumber
  }

  private fun init() {
    View.inflate(myContext, R.layout.generator_random_number_layout, this)

    val randomNumberButton: Button = findViewById(R.id.btn_generate_random_number_id)

    randomNumberButton.setOnClickListener {
      this.randomNumber = (0 until 100).shuffled().last()
      this.updateRandomNumberLabel()
    }
  }
}
