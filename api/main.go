package main

import "github.com/gin-gonic/gin"

func main() {
	router := gin.Default()
	router.GET("/test", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "ping",
		})
	})
	// ポートを設定
	router.Run(":8020")
}
