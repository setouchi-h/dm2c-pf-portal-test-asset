import json
import random
import os

# nft-metadataディレクトリが存在しない場合は作成
os.makedirs("nft-metadata", exist_ok=True)


def generate_metadata(token_id):
    image_hashes = [
        "QmUPjADFGEKmfohdTaNcWhp7VGk26h5jXDA7v3VtTnTLcW",
        "QmYx6GsYAKnNzZ9A6NvEKV9nf1VaDzJrqDR23Y8YSkebLU",
        "QmSsYRx3LpDAb1GZQm7zZ1AuHZjfbPkD6J7s9r41xu1mf8"
    ]

    metadata = {
        "name": f"Inu NFT #{token_id}",
        "token_type": 1,
        "token_id": token_id,
        "description": f"This is NFT number {token_id} in the Inu collection.",
        "title": "Inu NFT",
        "image": f"https://gateway.pinata.cloud/ipfs/{random.choice(image_hashes)}",
        "attributes": [
            {
                "trait_type": "Background",
                "value": random.choice(["Red", "Blue", "Green", "Yellow"])
            },
            {
                "trait_type": "Eyes",
                "value": random.choice(["Big", "Small", "Round", "Oval"])
            },
            {
                "trait_type": "Mouth",
                "value": random.choice(["Smile", "Frown", "Open", "Closed"])
            }
        ]
    }

    return metadata


for i in range(1, 201):
    metadata = generate_metadata(i)
    with open(f"data/nft-metadata/{i}.json", "w") as f:
        json.dump(metadata, f, indent=2)

print("200個のNFTメタデータが生成されました。")
