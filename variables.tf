variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "us-east-1"
}

variable "vApp" {
  type    = string
  default = "kafka-dr"
}

variable "kafka-cluster-ingress-rules" {
  type = list(object({
    port        = number
    proto       = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      port        = 80
      proto       = "tcp"
      cidr_blocks = ["76.181.232.36/32"]
    },
    {
      port        = 22
      proto       = "tcp"
      cidr_blocks = ["76.181.232.36/32"]
    },
    {
      port        = 8080
      proto       = "tcp"
      cidr_blocks = ["76.181.232.36/32"]
    },
    {
      port        = 8200
      proto       = "tcp"
      cidr_blocks = ["76.181.232.36/32"]
    },
    {
      port        = 9092
      proto       = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    },
    {
      port        = 9094
      proto       = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    },
    {
      port        = 2181
      proto       = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    },
    {
      port        = 2182
      proto       = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    }
  ]
}

variable "kafka-client-ingress-rules" {
  type = list(object({
    port        = number
    proto       = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      port        = 80
      proto       = "tcp"
      cidr_blocks = ["76.181.232.36/32"]
    },
    {
      port        = 22
      proto       = "tcp"
      cidr_blocks = ["76.181.232.36/32"]
    },
    {
      port        = 8080
      proto       = "tcp"
      cidr_blocks = ["76.181.232.36/32"]
    },
    {
      port        = 8200
      proto       = "tcp"
      cidr_blocks = ["76.181.232.36/32"]
    },
    {
      port        = 9092
      proto       = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    },
    {
      port        = 9094
      proto       = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    },
    {
      port        = 2181
      proto       = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    },
    {
      port        = 2182
      proto       = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    }
  ]
}

variable "egress-rules" {
  type = list(object({
    port        = number
    proto       = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      port        = 0
      proto       = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}