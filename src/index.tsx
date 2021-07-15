import { NativeModules } from 'react-native';

type CommunicationBridgeType = {
  multiply(a: number, b: number): Promise<number>;
};

const { CommunicationBridge } = NativeModules;

export default CommunicationBridge as CommunicationBridgeType;
