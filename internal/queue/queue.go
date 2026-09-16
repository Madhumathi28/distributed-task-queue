package queue

type Queue interface {
	Enqueue(jobID string) error
	Dequeue() (string, error)
}
