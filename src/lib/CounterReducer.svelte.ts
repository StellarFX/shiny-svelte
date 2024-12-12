import { getContext, setContext } from "svelte";

class CounterReducer {
    #count = $state(1);

    constructor() {
        document.addEventListener('count.set', (event) => {
            this.set(event.detail);
            console.log('count.set', this.#count);
        })
    }

    get count() {
        return this.#count;
    }

    increment() {
        this.#count += 1;
    }
    decrement() {
        this.#count -= 1;
    }
    set(value: number) {
        this.#count = value;
    }
}

/* --------------------------------- Context -------------------------------- */

const KEY = Symbol('CounterReducer');

export const getCounterReducer = () => {
    return getContext<CounterReducer>(KEY);
}

export const setCounterReducer = () => {
    setContext(KEY, new CounterReducer());
}