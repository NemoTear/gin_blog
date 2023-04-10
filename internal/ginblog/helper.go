// Project: gin_blog
// Created by Nemo on 2023/4/4 09:22 

package ginblog

import (
	"github.com/spf13/viper"
	"log"
	"strings"
)

const (
	defaultConfigName = "ginblog.yaml"
)

func initConfig() {
	if cfgFile != "" {
		viper.SetConfigFile(cfgFile)
	} else {
		viper.AddConfigPath(".")
		viper.SetConfigType("yaml")
		viper.SetConfigName(defaultConfigName)
	}

	viper.AutomaticEnv()
	viper.SetEnvPrefix("ginblog")
	replacer := strings.NewReplacer(".", "_", "-", "_")
	viper.SetEnvKeyReplacer(replacer)

	if err := viper.ReadInConfig(); err != nil {
		log.Println("viper read configuration file err", err)
	}
}

//func logOptions() *log.Options {
//
//}
