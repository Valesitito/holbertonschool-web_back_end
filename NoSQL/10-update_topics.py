#!/usr/bin/env python3
""" Replaces every topic on a school entry identified by its name """


def update_topics(mongo_collection, name, topics):
    """
    Replaces every topic on the school entry whose name matches
    """
    mongo_collection.update_many(
        {"name": name},
        {"$set": {"topics": topics}}
    )
  
