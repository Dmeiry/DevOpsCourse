FROM node:22
WORKDIR /skitick
COPY . .
ENV MONGO_URI=${{secrets.MONGO_URI}}
RUN npm install
EXPOSE 3000
CMD ["npm", "start", "dev"]