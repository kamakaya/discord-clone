"use client";

import { SearchIcon } from "lucide-react";

interface ServerSearchProps {
    data: {
        label: string;
        type: "channel" | "member",
        data: {
            icon: React.ReactNode;
            name: string;
            id: string;
        }[] | undefined
    } []
}

export const ServerSearch = ({
    data
}: ServerSearchProps) => {
    return(
        <>
            <button
                className="group px-2 py-2 rounded-md flex items-center gap-x-2 w-full hover:bg-zinc-700/10 dark:hover:bg-zinc-700/50 transition"
            >
                <SearchIcon className="w-4 h-4 text-zinc-500 dark:text-zinc-400"/>
                <p 
                    className="font-semibold text-sm text-zinc-500 dark:text-zinc-400 group-hover:text-zinc-600 dark:group-hover:text-zinc-300 transition"
                >
                    Search
                </p>
                <kbd 
                    className="pointer-events-none inline-flex h-5 select-none items-center gap-1 rounded border bg-muted px-1.5 font-mono text-[10px] font-medium text-muted-foreground ml-auto"
                >
                    <span className="text-xs">⌘</span>K
                </kbd>
            </button>
        </>
    )
}