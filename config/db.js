import mongoose from "mongoose";

const connectDB = async () => {
    try {
        const db = await mongoose.connect(MONGO_URI);
        console.log(`MongoDB Connected : ${db.connection.host}`);
    } catch (error) {
        console.error(error);
    }
};

export default connectDB;