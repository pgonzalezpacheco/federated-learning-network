from .client_training_status import ClientTrainingStatus


class TrainingClient:
    def __init__(self, client_url):
        self.client_url = client_url
        self.status = ClientTrainingStatus.IDLE
        self.model_params = None
        self.rounds = 0
        self.accuracy = None

    def __str__(self):
        return "Training client:\n--Client URL: {}\n--Status: {}\n".format(
            self.client_url,
            self.status)
