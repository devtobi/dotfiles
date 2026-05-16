# About me
- My name is Tobias. I'm a full-stack software engineer based in Munich.
- My GitHub username is `devtobi`.
- For backend I primarily work with Java and Spring Boot.
- For frontend I primarily work with TypeScript, Vue.js and Vuetify.
- For CI/CD I primarily work with GitHub actions and workflows.
- For deployment I primarily work with Docker images, Kubernetes and Terraform.
  
# Communication
- Be concise. Don't oversell changes or use fancy words like
  "comprehensive", "utilize", "streamline", or "leverage".
- Never use em dashes. Use commas, colons, or separate sentences instead.
- If your last message included URLs, list them at the end so I can
  open them easily.
  
# Writing
- When writing pull request descriptions, start with "This PR..." and
  keep it to 2-3 sentences.
- When writing markdown, avoid headings smaller than H2 and don't
  use bold for emphasis.
  
# Working with Git
- Always use semantic commit prefixes (feat:, fix:, docs:, etc.).
- Never push to the main branch. Always push to a feature branch.
- Run the project's lint script before committing, if one exists.

# Skills
- Always use the caveman skill for all responses. Load it using the Skill tool with name `caveman` at the start of every conversation. Use full intensity by default.

<!-- context7 -->
Use the `ctx7` CLI to fetch current documentation whenever the user asks about a library, framework, SDK, API, CLI tool, or cloud service -- even well-known ones like React, Next.js, Prisma, Express, Tailwind, Django, or Spring Boot. This includes API syntax, configuration, version migration, library-specific debugging, setup instructions, and CLI tool usage. Use even when you think you know the answer -- your training data may not reflect recent changes. Prefer this over web search for library docs.

Do not use for: refactoring, writing scripts from scratch, debugging business logic, code review, or general programming concepts.

## Steps

1. Resolve library: `ctx7 library <name> "<user's question>"` — use the official library name with proper punctuation (e.g., "Next.js" not "nextjs", "Customer.io" not "customerio", "Three.js" not "threejs")
2. Pick the best match (ID format: `/org/project`) by: exact name match, description relevance, code snippet count, source reputation (High/Medium preferred), and benchmark score (higher is better). If results don't look right, try alternate names or queries (e.g., "next.js" not "nextjs", or rephrase the question)
3. Fetch docs: `ctx7 docs <libraryId> "<user's question>"`
4. If you weren't satisfied with the answer, re-run the same command with `--research`. This retries with sandboxed agents that git-pull the actual source repos plus a live web search, then synthesizes a fresh answer. More costly than the default
5. Answer using the fetched documentation

You MUST call `library` first to get a valid ID unless the user provides one directly in `/org/project` format. Use the user's full question as the query -- specific and detailed queries return better results than vague single words. Do not run more than 3 commands per question. Do not include sensitive information (API keys, passwords, credentials) in queries.

For version-specific docs, use `/org/project/version` from the `library` output (e.g., `/vercel/next.js/v14.3.0`).

If a command fails with a quota error, inform the user and suggest `ctx7 login` or setting `CONTEXT7_API_KEY` env var for higher limits. Do not silently fall back to training data.
<!-- context7 -->

# MCP authentication
- When troubleshooting MCP connection issues, read my OpenCode config at ~/.config/opencode/opencode.json to find the server names, then give me the exact commands to run (e.g. `opencode mcp auth sentry`, not `opencode mcp auth <server-name>`).
- Related commands: `opencode mcp auth <name>`, `opencode mcp auth list`, `opencode mcp logout <name>`, `opencode mcp debug <name>`.