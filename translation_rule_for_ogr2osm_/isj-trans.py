# -*- coding: utf-8 -*-
def filterTags(attrs):
    if not attrs:
        return
    tags = {}

# Nameタグの設定
    if attrs['DistName']:
        tags.update({'name':attrs['DistName']})
    else:
        pass

# カテゴリにあわせてplaceの階層を決定
    check_type = attrs['CatCode']
    if check_type.endswith('1'):
        tags.update({'place':'quarter'})
    elif check_type.endswith('2'):
        tags.update({'place':'neighbourhood'})
    elif check_type.endswith('3'):
        tags.update({'place':'neighbourhood'})
    elif check_type.endswith('0'):
        tags.update({'place':'neighbourhood'})
    else:
        pass

    return tags
