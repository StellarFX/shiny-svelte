class ShinyBus {
    [key: string]: (...params: any) => any;

    constructor() {
        //Shiny.addCustomMessageHandler('r_message', this.onMessage);
        //Shiny.addCustomMessageHandler('new_alert', this.onNewAlert);
        Shiny.oncustommessage = (msg) => {
            const event = Object.keys(msg)[0];
            const data: any[] = msg[event];

            this[event]?.(data);
        }

    }

    ["count.set"](data: any) {
        document.dispatchEvent(new CustomEvent('count.set', { detail: data }));
    }


}

export default new ShinyBus();