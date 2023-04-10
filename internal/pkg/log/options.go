// Project: gin_blog
// Created by Nemo on 2023/4/4 09:54 

package log

import "go.uber.org/zap/zapcore"

type Options struct {
	DisableCaller     bool
	DisableStacktrace bool
	Level             string
	Format            string
	OutputPaths       []string
}

func NewOptions() *Options {
	return &Options{
		DisableCaller:     false,
		DisableStacktrace: false,
		Level:             zapcore.InfoLevel.String(),
		Format:            "console",
		OutputPaths:       []string{"stdout"},
	}
}
