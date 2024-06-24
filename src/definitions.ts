export interface LearnHelloworldCapacitorPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
