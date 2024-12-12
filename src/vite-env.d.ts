/// <reference types="svelte" />
/// <reference types="vite/client" />

interface DocumentEventMap {
    'count.set': CustomEvent<number>;
}