import * as React from 'react';

import { StyleSheet, Text, View } from 'react-native';
import { GeneratorRandomNumber } from 'communication-bridge';

console.log(GeneratorRandomNumber);

export default function App() {
  return (
    <View style={styles.container}>
      <Text>Teste</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
