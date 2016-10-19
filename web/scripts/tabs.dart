// Copyright (c) 2016, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by a GPLv3-style license
// that can be found in the LICENSE file.

import 'dart:html';

void initTabs() {
  querySelectorAll('.tabs > li > a').onClick.listen((Event event) {
    final Element target = event.target;
    final li = target.parent;
    li.parent.querySelectorAll('li').classes.remove('selected');
    li.classes.add('selected');
  });
}
