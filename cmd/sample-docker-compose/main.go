package main

import (
	"github.com/gin-gonic/gin"
	"github.com/sirupsen/logrus"
)

func main() {
	logrus.Println("Hello world")
	r := gin.Default()
	r.GET("/hello", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message" : "Hello world",
		})
	})
	if err := r.Run(":8080"); err != nil {
		panic(err)
	}
}
