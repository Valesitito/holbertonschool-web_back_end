#!/usr/bin/env python3
""" Adds a new document to a collection from keyword arguments """


def insert_school(mongo_collection, **kwargs):
    """
    Builds a new document from the supplied keyword args and stores it
    Yields the freshly assigned _id
    """
    result = mongo_collection.insert_one(kwargs)
    return result.inserted_id
