"""
Given a training log file, plot something.
"""
import csv
import matplotlib.pyplot as plt
import os


def main(training_log):
    with open(training_log) as fin:
        reader = csv.reader(fin)
        next(reader, None)  # skip the header
        accuracies = []
        top_5_accuracies = []

        for epoch, acc, loss, top_k_categorical_accuracy, val_acc, val_loss, val_top_k_categorical_accuracy in reader:
            accuracies.append(float(val_acc))
            top_5_accuracies.append(float(val_top_k_categorical_accuracy))

        accuracies_max = max(accuracies)
        top_5_accuracies_max = max(top_5_accuracies)
        plt.text(1, 1, 'acc_max: '+str(accuracies_max) + ' top5 max: '+str(top_5_accuracies_max))
        plt.plot(accuracies)
        plt.plot(top_5_accuracies)
        # plt.plot(cnn_benchmark)
        plt.show()


if __name__ == '__main__':
    log_path = '/Users/Kellan/Documents/PycharmProjects_py3/UCF101_Full_Classes/data/logs'

    # LSTM:
    # lstm-training-1542154335.4107983.log
    # lstm-training-1542183360.991841.log
    # lstm-training-1542244177.376045.log
    training_log_lstm = os.path.join(log_path, 'lstm-training-1542244177.376045.log')

    # training_log_lrcn = os.path.join(log_path, 'lrcn-training-1541865734.2624838.log')
    # training_log_mlp = os.path.join(log_path, 'mlp-training-1541812295.3485398.log')
    train_log_cnn = os.path.join(log_path, 'CNN_training-1542231245.9183443.log')
    # train_log_c3d = os.path.join(log_path, 'c3d-training-1541973749.8561466.log')
    # train_log_conv3d = os.path.join(log_path, 'conv_3d-training-1541973817.2605393.log')

    main(train_log_cnn)
    main(training_log_lstm)
    # main(training_log_lrcn)
    # main(training_log_mlp)
    # main(train_log_c3d)
    # main(train_log_conv3d)
