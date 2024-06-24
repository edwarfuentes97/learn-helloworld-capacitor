import { registerPlugin } from '@capacitor/core';

import type { LearnHelloworldCapacitorPluginPlugin } from './definitions';

const LearnHelloworldCapacitorPlugin =
  registerPlugin<LearnHelloworldCapacitorPluginPlugin>(
    'LearnHelloworldCapacitorPlugin',
    {
      web: () =>
        import('./web').then(m => new m.LearnHelloworldCapacitorPluginWeb()),
    },
  );

export * from './definitions';
export { LearnHelloworldCapacitorPlugin };
