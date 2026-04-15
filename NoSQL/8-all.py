#!/usr/bin/env python3
""" Retrieves every document from a collection using Python """
def list_all(mongo_collection):
    """Returns every document stored inside the given collection"""
    return list(mongo_collection.find())
