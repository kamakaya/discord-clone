This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app). The application is a clone of the Discord web application. This was built as with the help of a tutorial by "Code with Antonio" on Youtube.

## Live Demo

Click [here](https://discord-clone-bmkyy4heza-uc.a.run.app/) for a live demo of the application.

## Development

To run the development server:

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## Deployment

Tried deploying the application through Railway.app, but it kept crashing. Instead, I decided to dockarize it and deploy it directly through GCP. Initially deployed it through Kubernetes, but it's too expensive to make sense (>$1/day). Instead, I ended up deploying through Cloud Run bc it's a lot cheaper.


## Technologies used

- **Framework**: Next.js, Tailwind CSS, Shadcn
- **Database**: Prisma, MySQL, and Planetscale
- **Authentication & User Management**: Clerk
- **Realtime messaging**: Socket.io
- **Deployment / Hosting**: Docker, Google Cloud Run

### Architecture
![discord-clone-architecture](https://github.com/kamakaya/discord-clone/assets/32623963/894c4ce2-cd5a-4aeb-8be0-099b23e65c03)

## Roadmap
A couple of items that I want to work on

### Infrastructure
- Automated deployments (CI/CD with either Github Actions or Cloudbuild)
- Migrate Database to GCP

### Application
- Notifications - as simple as a visual alert on new messages in the channel / server since it was last opened
- React to messages with Emoji's
