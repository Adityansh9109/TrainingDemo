package training.demo.dao;

import java.util.List;

import training.demo.entities.Trainer;

public interface TrainerDao {
   int insertTrainer (Trainer trainer);
   int updateTrainer(Trainer trainer);
   int deleteTrainer(int trainerId);
   Trainer getTrainer(int trainerId);
   
   List<Trainer> getlistOfTrainer();
}
