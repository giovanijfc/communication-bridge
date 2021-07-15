import React, { FC } from 'react';
import { ViewProps, requireNativeComponent } from 'react-native';

const GeneratorRandomNumberNativeView = requireNativeComponent<{}>(
  'GeneratorRandomNumber'
);

type GeneratorRandomNumberProps = ViewProps;

export const GeneratorRandomNumber: FC<GeneratorRandomNumberProps> = (
  props
) => {
  return <GeneratorRandomNumberNativeView {...props} />;
};
