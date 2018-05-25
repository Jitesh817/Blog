Resque::Failure::Multiple.classes = [Resque::Failure::Redis, Resque::Failure::RemoveRunaways]
Resque::Failure.backend = Resque::Failure::Multiple