.PHONY: clean generate
PROTO_DIR = proto
GEN_DIR = gen/go

PROTOC = protoc

GO_OUT_FLAGS = --go_out=$(GEN_DIR) --go_opt=paths=source_relative
GO_GRPC_OUT_FLAGS = --go-grpc_out=$(GEN_DIR) --go-grpc_opt=paths=source_relative

PROTO_FILES = $(PROTO_DIR)/imageStorage/fileStorage.proto

generate:
	$(PROTOC) -I $(PROTO_DIR) $(PROTO_FILES) $(GO_OUT_FLAGS) $(GO_GRPC_OUT_FLAGS)

clean:
	PowerShell -Command "Remove-Item -Recurse -Force $(GEN_DIR)\*"
