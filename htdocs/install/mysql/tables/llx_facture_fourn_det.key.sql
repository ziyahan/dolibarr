-- ===================================================================
-- Copyright (C) 2005 Laurent Destailleur  <eldy@users.sourceforge.net>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.
--
-- $Id: llx_facture_fourn_det.key.sql,v 1.3 2011/08/03 01:25:34 eldy Exp $
-- ===================================================================


-- Supprimme orphelins pour permettre montee de la cle
-- V4 DELETE llx_facture_fourn_det FROM llx_facture_fourn_det LEFT JOIN llx_facture_fourn ON llx_facture_fourn_det.fk_facture_fourn = llx_facture_fourn.rowid WHERE llx_facture_fourn.rowid IS NULL;

ALTER TABLE llx_facture_fourn_det ADD INDEX idx_facture_fourn_det_fk_facture (fk_facture_fourn);
ALTER TABLE llx_facture_fourn_det ADD CONSTRAINT fk_facture_fourn_det_fk_facture FOREIGN KEY (fk_facture_fourn) REFERENCES llx_facture_fourn (rowid);
