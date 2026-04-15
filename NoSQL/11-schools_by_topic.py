#!/usr/bin/env python3
""" Yields all schools that include a particular topic """


def schools_by_topic(mongo_collection, topic):
    """
    Yields every school whose topics list contains the requested entry
    """
    return list(mongo_collection.find({"topics": topic}))
