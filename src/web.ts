import { WebPlugin } from '@capacitor/core';

import type { LearnHelloworldCapacitorPluginPlugin } from './definitions';

export class LearnHelloworldCapacitorPluginWeb
  extends WebPlugin
  implements LearnHelloworldCapacitorPluginPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
