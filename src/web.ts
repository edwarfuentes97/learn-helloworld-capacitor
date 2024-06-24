import { WebPlugin } from '@capacitor/core';

import type { LearnHelloworldCapacitorPluginPlugin } from './definitions';

export class LearnHelloworldCapacitorPluginWeb
extends WebPlugin
implements LearnHelloworldCapacitorPluginPlugin
{
    async echo(options: { value: string }): Promise<{ value: string }> {
        console.log('******* echo function for browser <desde plugin>' , options , ' fin del parametro options' )
        console.log('ECHO', options);
        const newOptions = {
            value : options.value + ' ------ texto modificado en el plugin'
        }
        return newOptions
    }
}
