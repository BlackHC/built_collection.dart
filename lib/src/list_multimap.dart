// Copyright (c) 2015, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

library built_collection.list_multimap;

import 'package:quiver/collection.dart' show ListMultimap;
import 'package:quiver/core.dart' show hashObjects, hash2;

import 'internal/copy_on_write_map.dart';
import 'internal/unused_class.dart';

import 'list.dart';

part 'list_multimap/built_list_multimap.dart';
part 'list_multimap/list_multimap_builder.dart';

class OverriddenHashcodeBuiltListMultimap<K, V>
    extends BuiltListMultimap<K, V> {
  final int _hashCode;

  OverriddenHashcodeBuiltListMultimap(map, this._hashCode)
      : super._copyAndCheck(map.keys, (k) => map[k]);

  int get hashCode => _hashCode;
}