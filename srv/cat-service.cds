using fabone.sdesk as sdesk from '../db/data-model';

service CatalogService {
       @readonly entity ServiceTickets as projection on sdesk.ServiceTickets;
}