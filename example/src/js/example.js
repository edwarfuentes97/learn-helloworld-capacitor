import { LearnHelloworldCapacitorPlugin } from 'learn-helloworld-capacitor';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    LearnHelloworldCapacitorPlugin.echo({ value: inputValue })
}
