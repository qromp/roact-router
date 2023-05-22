import { Hooks } from "./hooks";

import { PathMatchResults } from "./Path"

declare function useParams(): PathMatchResults | undefined

export = useParams