/* treemultiset.vala
 *
 * Copyright (C) 2009  Didier Villevalois
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.

 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.

 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
 * Author:
 * 	Didier 'Ptitjes Villevalois <ptitjes@free.fr>
 */

/**
 * A tree based implementation of the {@link Gee.MultiSet} interface.
 */
public class Gee.TreeMultiSet<G> : AbstractMultiSet<G> {
	public CompareFunc compare_func {
		get { return ((TreeMap<G, int>) _storage_map).key_compare_func; }
	}

	/**
	 * Constructs a new, empty tree multi set.
	 */
	public TreeMultiSet (CompareFunc? compare_func = null) {
		base (new TreeMap<G, int> (compare_func, int_equal));
	}
}